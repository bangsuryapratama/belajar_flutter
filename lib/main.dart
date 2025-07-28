import 'dart:html';

import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloFlutter(

      )
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'ALAMAK FLUTTER AJOJING',
      body: Center(
        child: Text(' Jawa muda berkelana tua cari bencana ',
        style: 
        TextStyle(
        fontSize: 24,
        color: Colors.amberAccent,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.red,
          )
        ,), 
      ),
    );
  }
}