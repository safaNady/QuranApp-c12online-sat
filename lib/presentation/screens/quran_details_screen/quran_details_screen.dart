import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/qurann_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/quran_details_screen/sura_verses_widget/sura_verses_widget.dart';

class QuranDetailsScrean extends StatefulWidget {
  QuranDetailsScrean({super.key});

  @override
  State<QuranDetailsScrean> createState() => _QuranDetailsScreanState();
}

class _QuranDetailsScreanState extends State<QuranDetailsScrean> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readQuranFile(suraItem.index + 1);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsManager.lightMainBg))),
      child: Scaffold(
          appBar: AppBar(
            title: Text(suraItem.suraName),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      SuraVersesWidget(verse: verses[index]),
                  itemCount: verses.length,
                )),
    );
  }

  void readQuranFile(int index) async {
    String fileContent = await rootBundle.loadString('assets/files/$index.txt');
    verses = fileContent.trim().split('\n');
    setState(() {});
  }
}
