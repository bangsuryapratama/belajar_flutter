import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class GridSatu extends StatelessWidget {
  const GridSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Grid Satu',
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          ),
          children: [
            Container(color: Colors.blue, width: 200, child: Text('Agus')),
            Container(color: Colors.red, width: 200, child: Text('Kuloy')),
            Container(color: Colors.green, width: 200, child: Text('Bulay')),
            Container(color: Colors.purple  , width: 200, child: Text('Parman')),
            Container(color: Colors.yellow, width: 200, child: Text('Bulay')),
            Container(color: Colors.lightBlueAccent  , width: 200, child: Text('Parman')),
            Container(color: Colors.green  , width: 200, child: Text('Parman')),
            Container(color: Colors.red  , width: 200, child: Text('Parman')),
            Container(color: Colors.pinkAccent  , width: 200, child: Text('Parman')),
          ],
        ),
    );
  }
}