import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mqdc_one/controllers/home_controller.dart';
import 'package:mqdc_one/theme/constant.dart';
import 'package:mqdc_one/views/home/home_page.dart';

class IndexPage extends StatefulWidget {
  // const IndexPage({Key key}) :/ super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
              child:
                  controller.widgetOptions.elementAt(controller.selectedIndex)),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            onTap: controller.onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.saved_search),
                label: 'Discover',
              ),
            ],
          ),
        );
      },
    );
  }
}
