import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanSatu extends StatelessWidget {
  const LatihanSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Kombinasi Widget',
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:NetworkImage("https://herald.id/wp-content/uploads/2023/07/Photolab-49692914.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
             Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Prabowo', 
                        style: TextStyle(
                        color: Colors.white,
                        fontSize:20, 
                        fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'PRESIDENT OF INDONESIA',
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                    ],
                  ),
                  Icon(Icons.play_circle_fill_outlined,color: Colors.white70, size: 40,),
                ],
              ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}