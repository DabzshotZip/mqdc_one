import 'package:flutter/material.dart';
import 'package:mqdc_one/theme/constant.dart';
import 'package:mqdc_one/theme/palette.dart';

class OtherMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CardMenu(
          title: 'Scan',
          icon: Icons.qr_code_scanner_sharp,
        ),
        CardMenu(
          title: 'Card',
          icon: Icons.credit_card,
        ),
        CardMenu(
          title: 'Coupon',
          icon: Icons.local_offer_sharp,
        ),
        CardMenu(
          title: 'Privilege',
          icon: Icons.diamond,
        ),
      ],
    );
  }
}

class CardMenu extends StatelessWidget {
  CardMenu({required this.title, required this.icon});

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                icon,
                color: Palette.teal,
                size: 33,
              )),
        ),
        spaceCol5,
        Text(
          title,
          style: h4GreyNormal,
        )
      ],
    );
  }
}
