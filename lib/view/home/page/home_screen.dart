import 'package:flutter/material.dart';
import 'package:the_holy_quran/core/app_colors.dart';
import 'package:the_holy_quran/view/home/page/tabs/hijib_tab.dart';
import 'package:the_holy_quran/view/home/page/tabs/page_tab.dart';
import 'package:the_holy_quran/view/home/page/tabs/para_tab.dart';
import 'package:the_holy_quran/view/home/page/tabs/surah_tab.dart';
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
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: NestedScrollView(
            physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverToBoxAdapter(
                child: HeaderAndCard(),
              ),
              SliverAppBar(
                pinned: true,
                elevation: 0,
                backgroundColor: AppColors.background,
                automaticallyImplyLeading: false,
                shape: Border(
                  bottom: BorderSide(
                    width: 3,
                    color: const Color(0xffAAAAAA).withOpacity(.1),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: _tab(),
                ),
              )
            ],
            body: const TabBarView(
              physics: BouncingScrollPhysics(),
              children: [
                SurahTab(),
                ParaTab(),
                PageTab(),
                HijibTab(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TabBar _tab() {
    return TabBar(
        unselectedLabelColor: AppColors.textColor,
        labelColor: AppColors.white,
        indicatorColor: AppColors.primary,
        indicatorWeight: 3,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 5,
            color: AppColors.primary,
          ),
        ),
        tabs: [
          _tabItems(
            label: 'Surah',
          ),
          _tabItems(
            label: 'Para',
          ),
          _tabItems(
            label: 'Page',
          ),
          _tabItems(
            label: 'Hojb',
          ),
        ]);
  }

  Tab _tabItems({String? icon, required String label, Color? color}) {
    return Tab(
      child: CustomText(
        text: label,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}

class HeaderAndCard extends StatelessWidget {
  const HeaderAndCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'الســــلام عليــــكم',
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
        const SizedBox(height: 24),
      ],
    );
  }
}
