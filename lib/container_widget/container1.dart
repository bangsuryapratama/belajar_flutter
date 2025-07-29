import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';

class ContainerSatu extends StatelessWidget{
  const ContainerSatu({super.key});
  

  @override 
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container Satu',
      body: Container(
        margin: EdgeInsets.only(left:150,top: 20),
        alignment: Alignment.center,
        color: Colors.indigoAccent,
        width: 200,
        height: 200,
        child: Container(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          child: Text('HALO SEMUANYA')
          ),
      ),
    );
  }
}