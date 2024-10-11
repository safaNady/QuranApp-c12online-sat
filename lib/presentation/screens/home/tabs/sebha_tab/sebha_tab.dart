import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(AssetsManager.quranSebhaImage),
          Text('عدد التسبيحات',
              style: TextStyle(
                  color: Color(0xFF242424),
                  fontWeight: FontWeight.w600,
                  fontSize: 25))
        ],
      ),
    );
  }
}
