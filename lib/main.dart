// ignore_for_file: prefer_const_constructors

import 'package:bangsur_project/container_widget/container1.dart';
import 'package:bangsur_project/container_widget/container2.dart';
import 'package:bangsur_project/stack_widget/stack1.dart';
import 'package:bangsur_project/stack_widget/stack2.dart';
import 'package:bangsur_project/stack_widget/stack3.dart';
import 'package:flutter/material.dart';
import 'package:bangsur_project/main_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackThree(),
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
      title: 'Ahmad Rujak Cianjur',
      body: Center(
        child: Text(
          'Hello COKK',
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              backgroundColor: Colors.blueAccent),
        ),
      ),
    );
  }
}