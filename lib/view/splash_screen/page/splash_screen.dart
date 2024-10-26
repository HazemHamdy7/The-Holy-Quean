import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_holy_quran/core/app_assets.dart';
import 'package:the_holy_quran/core/app_colors.dart';
import 'package:the_holy_quran/view/home/page/home_screen.dart';
import 'package:the_holy_quran/view/splash_screen/widget/custom_button.dart';
import 'package:the_holy_quran/view/splash_screen/widget/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Quran App',
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 35,
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: "learn Quran and Recite \nonce every day",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textColor,
                  fontSize: 14,
                ),
                const SizedBox(height: 40),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.secondary,
                      ),
                      child: SvgPicture.asset(AppAssets.svgsSplash),
                    ),
                    Positioned(
                      left: 0,
                      bottom: -23,
                      right: 0,
                      child: Center(
                        child: CustomButton(
                            color: AppColors.buttonColor,
                            onTap: () => Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                )),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
