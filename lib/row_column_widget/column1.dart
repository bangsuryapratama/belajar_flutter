import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class ColumnOne extends StatelessWidget {
  const ColumnOne({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column One',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Agus 1'),
          Text('Agus 2'),
          Text('Agus 3'),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('AGUS KETUPAT'),
              Text('AGUS TEMPE MENDOAN'),
              Text('AGUS KETAPEL'),
            ],
          )
        ],
      ),
    );
  }
}