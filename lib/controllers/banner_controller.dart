import 'package:get/get.dart';
import 'package:mqdc_one/models/banner.dart';

class BannerController extends GetxController {
  var banners = <Banner>[].obs;

  @override
  void onInit() {
    fetchBanners(); // call API to initial data
    super.onInit();
  }

  void fetchBanners() async {
    await Future.delayed(Duration(seconds: 1));
    var result = [
      Banner(
          id: 1,
          topic:
              'QPlay TH รถเข็นเด็กพกพาจากเยอรมัน จัดโปรโมชั่น FLASH SALE ลดจัดหนัก 6 วันเท่านั้น',
          image:
              'https://www.ryt9.com/img/files/20210809/iq1ee43b2f116a1c32ac60655c791c4327.jpg',
          createTime: '2022-05-12 23:03:17'),
      Banner(
          id: 2,
          topic:
              'FLASH SALE 7.7 ช้อปโปรปังเกินคุ้ม ลดสูงสุด 42% รวมรถเข็นคุณภาพดี แบรนด์ดัง นำเข้าจากต่างประเทศ ลดราคาจัดหนัก เอาใจคุณพ่อคุณแม่ขาช้อป จากร้าน ProdpranKids',
          image:
              'https://www.thaipr.net/wp-content/uploads/2021/07/1200-x-628-px-3f86409c.png',
          createTime: '2022-05-12 23:03:17'),
      Banner(
          id: 3,
          topic: 'FLASH SALE PROMOTION 5 วันเท่านั้น ลดสูงสุด 50%',
          image:
              'https://aromathailand.com/wp-content/uploads/2020/11/FLASH-SALE_11.jpg',
          createTime: '2022-05-12 23:03:17'),
    ];

    // products.value = productResult;  // แบบนี้ depreciated แล้ว
    banners.assignAll(result); // เก็บค่าทั้งหมดลงใน products
  }
}
