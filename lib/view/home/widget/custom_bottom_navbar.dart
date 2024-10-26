import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_holy_quran/core/app_assets.dart';
import 'package:the_holy_quran/core/app_colors.dart';

BottomNavigationBar customBottomNavBar() => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      //    showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: AppColors.gary,
      items: [
        _bottomBarItem(
          icon: AppAssets.svgsQuranIcon,
          label: "Quran",
        ),
        _bottomBarItem(
          icon: AppAssets.svgsLampIcon,
          label: "Tips",
        ),
        _bottomBarItem(
          icon: AppAssets.svgsPrayIcon,
          label: "Paryer",
        ),
        _bottomBarItem(
          icon: AppAssets.svgsDoaIcon,
          label: "Doa",
        ),
        _bottomBarItem(
          icon: AppAssets.svgsBookmarkIcon,
          label: "Bookmark",
        ),
      ],
    );

BottomNavigationBarItem _bottomBarItem(
    {required String icon, required String label}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      icon,
    ),
    activeIcon: SvgPicture.asset(
      icon,
    ),
    label: label,
  );
}
