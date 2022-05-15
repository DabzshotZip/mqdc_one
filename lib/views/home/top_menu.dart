import 'package:flutter/material.dart';
import 'package:mqdc_one/theme/constant.dart';
import 'package:mqdc_one/theme/palette.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.remove.bg/images/remove_image_background.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(width: 2, color: Colors.grey.shade200),
              shape: BoxShape.circle,
            ),
          ),
          Column(
            children: [
              Text(
                'MQDC',
                style: h1TealBold,
              ),
              Text(
                'Smart Park',
                style: h4GreyNormal,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [iconMenu(Icons.search), spaceRow20, iconMenu(Icons.add)],
          ),
        ],
      ),
    );
  }

  Widget iconMenu(IconData icon) {
    return Icon(
      icon,
      color: Palette.teal,
      size: 25,
    );
  }
}
