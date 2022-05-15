import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mqdc_one/theme/constant.dart';
import 'package:mqdc_one/theme/images.dart';
import 'package:mqdc_one/views/home/announcement.dart';
import 'package:mqdc_one/views/home/banner_list.dart';
import 'package:mqdc_one/views/home/controller_menu.dart';
import 'package:mqdc_one/views/home/other_menu.dart';
import 'package:mqdc_one/views/home/top_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TopMenu(),
        OtherMenu(),
        spaceCol30,
        cardBody(
          child: Column(
            children: [
              ControllerMenu(),
              AnnouncementList(),
              BannerList(),
            ],
          ),
        ),
      ],
    );
  }

  Widget cardBody({required Widget child}) {
    final widget = Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, blurRadius: 25, spreadRadius: 5),
          ],
        ),
        child: child);
    return widget;
  }
}
