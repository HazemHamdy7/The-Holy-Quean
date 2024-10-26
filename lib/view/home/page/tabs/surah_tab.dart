import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_holy_quran/core/app_assets.dart';
import 'package:the_holy_quran/core/constants.dart';
import 'package:the_holy_quran/model/surah.dart';
import 'package:the_holy_quran/view/splash_screen/widget/custom_text.dart';

class SurahTab extends StatelessWidget {
  const SurahTab({super.key});

  Future<List<Datum>> getSurah() async {
    String data = await rootBundle.loadString(baseUrl);
    Surah surah = surahFromJson(data);
    return surah.data; // Return the list of Datum objects
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Datum>>(
      future: getSurah(),
      initialData: const [],
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          return ListView.separated(
            itemCount: snapshot.data!.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final datum = snapshot.data![index];
              return SurahItem(
                surahName: datum,
              );
            },
          );
        }
      },
    );
  }
}

class SurahItem extends StatelessWidget {
  const SurahItem({super.key, required this.surahName});

  final Datum surahName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                AppAssets.svgsNomorSurah,
              ),
            ],
          ),
          CustomText(text: surahName.name),
        ],
      ),
    );
  }
}
