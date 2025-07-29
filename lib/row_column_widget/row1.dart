import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class RowOne extends StatelessWidget {
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainLayout(
      title: 'Row Satu',
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text('UDIN MAKAN TAHU '),
          Text('UDIN MAKAN JENGKOL '),
          Text('UDIN MAKAN BAKSO'),
          // Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          //  children: [
          //   Text('TEXT COLUMN 1'),
          //   Text('TEXT COLUMN 2'),
          //  ],
          // ),
        ],
      ),
    );
  }
}