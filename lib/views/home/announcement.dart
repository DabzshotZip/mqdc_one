import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mqdc_one/controllers/announcement_controller.dart';
import 'package:mqdc_one/models/announcement.dart';
import 'package:mqdc_one/theme/constant.dart';
import 'package:mqdc_one/theme/images.dart';

class AnnouncementList extends StatelessWidget {
  final bannerController = Get.put(AnnouncementController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: GetX<AnnouncementController>(builder: (controller) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.iconAnnouncement,
              scale: 1,
              color: Colors.teal,
              height: 20,
            ),
            spaceRow20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Announcement',
                  style: h2TealNormal,
                ),
                spaceCol10,
                for (var i in controller.announces) topicAnnouncement(i)
              ],
            ),
          ],
        );
      }),
    );
  }

  Widget topicAnnouncement(Announce announce) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          dot(),
          spaceRow10,
          Text(
            announce.topic,
            style: h35Black54Normal,
          )
        ],
      ),
    );
  }

  Widget dot() => Container(
        height: 8,
        width: 8,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.teal,
        ),
      );
}
