import 'package:bangsur_project/main_layout.dart';
import 'package:flutter/material.dart';

class LatihanRC extends StatelessWidget {
  const LatihanRC({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan ROW COLUMN',
      body: Center(
        child: Container(
          height: 70,
          width: double.infinity,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.call, size: 30),
                  Text('Call'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.navigation, size: 30),
                  Text('Route'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.share, size: 30),
                  Text('Share'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}