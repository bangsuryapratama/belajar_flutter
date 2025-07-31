// ignore_for_file: prefer_const_constructors

import 'package:bangsur_project/container_widget/container1.dart';
import 'package:bangsur_project/container_widget/container2.dart';
import 'package:bangsur_project/form_widget/input_screen.dart';
import 'package:bangsur_project/grid_view/grid_satu.dart';
import 'package:bangsur_project/grid_view/grid_screen.dart';
import 'package:bangsur_project/latihan/grid_eo.dart';
import 'package:bangsur_project/list_widget/list1.dart';
import 'package:bangsur_project/list_widget/list2.dart';
import 'package:bangsur_project/list_widget/list_screen.dart';
import 'package:bangsur_project/row_column_widget/column1.dart';
import 'package:bangsur_project/row_column_widget/lat_row_col.dart';
import 'package:bangsur_project/row_column_widget/latihan_satu.dart';
import 'package:bangsur_project/row_column_widget/news_card.dart';
import 'package:bangsur_project/row_column_widget/row1.dart';
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
      home: InputFormScreen(),
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