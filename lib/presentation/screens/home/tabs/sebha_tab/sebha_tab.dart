import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manager.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => SebhaTabState();
}

class SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double _rotationAngle = 0.0;
  String displayText = 'سبحان الله';

  void incrementCounter() {
    setState(() {
      counter++;
      if (counter >= 66) {
        displayText = 'الله أكبر';
      } else if (counter >= 33) {
        displayText = 'الحمد لله';
      } else {
        displayText = 'سبحان الله';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Transform.rotate(
                  angle: _rotationAngle * 3.14159,
                  child: Image.asset(
                    AssetsManager.quranSebhaImage,
                    width: 232,
                    height: 234,
                  )),
            ),
          ],
        ),
        Text('عدد التسبيحات',
          style: Theme.of(context).textTheme.labelMedium,
          textAlign: TextAlign.center,
        ),
        Text(
          '$counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(
          onPressed: incrementCounter,
          child: Text(displayText),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFFB7935F))),
        ),
      ],
    );
  }
}
