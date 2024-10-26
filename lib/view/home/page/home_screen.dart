import 'package:flutter/material.dart';
import 'package:the_holy_quran/core/app_colors.dart';
import 'package:the_holy_quran/view/home/widget/cusrom_card_quran.dart';
import 'package:the_holy_quran/view/home/widget/custom_appBar.dart';
import 'package:the_holy_quran/view/home/widget/custom_bottom_navbar.dart';
import 'package:the_holy_quran/view/splash_screen/widget/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: customAppBar(),
      bottomNavigationBar: customBottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'السلام عليكم',
                fontSize: 17,
                fontWeight: FontWeight.w300,
                color: AppColors.textColor,
              ),
              const SizedBox(height: 8),
              CustomText(
                text: 'Welcome Hazem !',
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
              const SizedBox(height: 24),
              const CustomCardQuran(),
            ],
          ),
        ),
      ),
    );
  }
}
