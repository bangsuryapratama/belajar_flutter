import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class ListSatu extends StatelessWidget {
  const ListSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List Basic',
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return Container(
            color: Colors.blue,
            margin: EdgeInsets.all(10),
            width: 100,
            height: 100,
            child: Text(' Halo ' + index.toString()),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}