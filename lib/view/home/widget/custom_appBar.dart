import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_holy_quran/core/app_assets.dart';
import 'package:the_holy_quran/core/app_colors.dart';
import 'package:the_holy_quran/view/splash_screen/widget/custom_text.dart';

AppBar customAppBar() => AppBar(
      backgroundColor: AppColors.background,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets.svgsMenuIcon),
            color: Colors.white,
          ),
          const SizedBox(width: 20),
          CustomText(
              text: "Quran App",
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppAssets.svgsSearchIcon),
            color: Colors.white,
            isSelected: true,
            style: IconButton.styleFrom(),
          ),
        ],
      ),
    );
