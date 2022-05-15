import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mqdc_one/views/home/home_page.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();
  int selectedIndex = 0;

  void onItemTapped(int value) {
    selectedIndex = value;
    update();
  }

  List<Widget> widgetOptions = <Widget>[
    HomePage(),
    Container(),
    Container(),
  ];
}
