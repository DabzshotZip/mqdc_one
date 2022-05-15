import 'package:flutter/material.dart';
import 'package:mqdc_one/theme/constant.dart';
import 'package:mqdc_one/theme/palette.dart';

class ControllerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CardMenu(
            title: 'My Home',
            icon: Icons.home_filled,
          ),
          CardMenu(
            title: 'Online Booking',
            icon: Icons.calendar_today_outlined,
          ),
          CardMenu(
            title: 'Contact',
            icon: Icons.call_outlined,
          ),
        ],
      ),
    );
  }
}

class CardMenu extends StatelessWidget {
  CardMenu({required this.title, required this.icon});

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(25.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade300, blurRadius: 20, spreadRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Icon(
              icon,
              size: 40,
              color: Palette.teal.withOpacity(0.8),
            ),
          ),
          Text(
            title,
            style: h4GreyNormal,
          )
        ],
      ),
    );
  }
}
