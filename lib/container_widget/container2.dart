import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerDua extends StatelessWidget{
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context){
    return MainLayout(
      title:'Container 2', 
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
           
            Colors.white,
            Colors.lightBlue,
            Colors.blue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: ElevatedButton(
            onPressed: () {},
            child: Text('MONYUONG'),
          ),
        ) ,
      ),
    );
  }


}