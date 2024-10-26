import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_holy_quran/core/app_assets.dart';
import 'package:the_holy_quran/core/app_colors.dart';
import 'package:the_holy_quran/view/splash_screen/widget/custom_text.dart';

class CustomCardQuran extends StatelessWidget {
  const CustomCardQuran({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 131,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0, 0.6, 1],
              colors: [
                AppColors.gradient1,
                AppColors.gradient2,
                AppColors.gradient3
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -25,
          right: 0,
          child: SvgPicture.asset(
            AppAssets.svgsQuran,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppAssets.svgsBook),
                  const SizedBox(width: 8),
                  CustomText(
                    text: 'Last Read',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomText(
                text: 'Al-Fatihah',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
              const SizedBox(height: 6),
              CustomText(
                text: 'Ayat: 7',
                fontSize: 14,
                color: AppColors.white,
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
