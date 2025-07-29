import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';

class ContainerSatu extends StatelessWidget{
  const ContainerSatu({super.key});
  

  @override 
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        margin: EdgeInsets.only(left:150,top: 50),
        alignment: Alignment.center,
        color: Colors.indigoAccent,
        width: 200,
        height: 200,
        child: Container(
          padding: EdgeInsets.all(40),
          margin: EdgeInsets.all(20),
          color: Colors.yellow,
          child: Text('HALO SEMUANYA'),
          // decoration: BoxDecoration(
            
          // ),
          ),
        ),
    );
  }
}