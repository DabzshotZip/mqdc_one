import 'package:flutter/material.dart';
import 'package:mqdc_one/views/home/home_page.dart';
import 'package:mqdc_one/views/index_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MQDC One',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IndexPage(),
    );
  }
}
