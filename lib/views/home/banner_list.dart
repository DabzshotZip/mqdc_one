import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mqdc_one/controllers/banner_controller.dart';
import 'package:mqdc_one/models/banner.dart' as bn;
import 'package:mqdc_one/theme/constant.dart';

class BannerList extends StatelessWidget {
  final bannerController = Get.put(BannerController());
  @override
  Widget build(BuildContext context) {
    return GetX<BannerController>(builder: (controller) {
      return Container(
          child: Column(
        children: [for (var i in controller.banners) cardNBanner(i)],
      ));
    });
  }

  cardNBanner(bn.Banner banner) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(banner.image),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 25,
                    spreadRadius: 5),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(banner.topic,
              overflow: TextOverflow.ellipsis, maxLines: 2, style: h2TealBold),
          SizedBox(
            height: 5,
          ),
          Text(
            DateFormat('dd MMM yyyy, HH:mm')
                .format(DateTime.parse(banner.createTime)),
            style: h2GreyNormal,
          )
        ],
      ),
    );
  }
}
