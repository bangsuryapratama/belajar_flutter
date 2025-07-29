import 'package:bangsur_project/container_widget/container1.dart';
import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class ContainerDua extends StatelessWidget{
  const ContainerDua({super.key});

  @override
  Widget build(BuildContext context){
    return MainLayout(
      title:'Container 2',        
      // style: TextStyle(color: Colors.white),
      body: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
           
            Colors.black,
            Colors.redAccent,
            Colors.redAccent,
            Colors.black,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
            onPressed: () {
              Navigator.push(
               context,
               MaterialPageRoute(
                builder: (context) 
                => ContainerSatu()),
              );
            },
            child: Text('MONYUONG',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
        ) ,
      ),
    );
  }


}