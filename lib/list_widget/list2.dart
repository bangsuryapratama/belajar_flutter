import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListDua extends StatelessWidget {
  
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color': Colors.red, 'partai' : ' Partai Banteng Merah'},
    {'color': Colors.yellow, 'partai' : ' Partai Lele Kuning'},
    {'color': Colors.green, 'partai' : ' Partai Buaya Darat'},
    {'color': Colors.blue, 'partai' : ' Partai Bulao'},
    {'color': Colors.orange, 'partai' : ' Partai Jeruk Cianjur'},
    {'color': Colors.pink, 'partai' : ' Partai Hanasui'},
  ];
  
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Builder',
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder:(context, i){
          final data = listData[i];
          return Container(
            color: data['color'],
            width: 200,
            height: 190,
            child: Text(data['partai']),
          );
        },
          // scrollDirection: Axis.horizontal,
      ),
    );
  }
}