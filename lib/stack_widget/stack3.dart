import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Gambar ADUDU',
      body: Stack(
        children: [
          Image.network(
            'https://tse2.mm.bing.net/th/id/OIP.QHK-Tr9hLYg25WnaCuzm_wHaFj?rs=1&pid=ImgDetMain&o=7&rm=3'
          ),
          Positioned(
            bottom: 10,
            left: 25,
            child: Text('ADUDU BERGOYANG', style: TextStyle(
              color: Colors.amber
            ),),
          )
        ],
      ),
    );
  }
}