import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';
import 'package:quran_app/core/strings_manager.dart';
import 'package:quran_app/presentation/screens/home/tabs/hadith_tab/hadith_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/screens/home/tabs/settings_tab/setting_tab.dart';

class HomeScrean extends StatefulWidget {
  HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetsManager.lightMainBg))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.radioIcon)),
                label: StringsManager.radioLabel),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.sebhaIcon)),
                label: StringsManager.sephaLabel),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.hadithIcon)),
                label: StringsManager.hadithLabel),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(AssetsManager.quranIcon)),
                label: StringsManager.quranLabel),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: StringsManager.settingLabel)
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
