import 'package:get/get.dart';
import 'package:mqdc_one/models/announcement.dart';

class AnnouncementController extends GetxController {
  var announces = <Announce>[].obs;

  @override
  void onInit() {
    fetchBanners(); // call API to initial data
    super.onInit();
  }

  void fetchBanners() async {
    await Future.delayed(Duration(seconds: 1));
    var result = [
      Announce(
        id: 1,
        topic: 'The Forestias Wins 3 Design Awards',
      ),
      Announce(
        id: 2,
        topic: 'MQDC Helps Communities',
      ),
    ];

    // products.value = productResult;  // แบบนี้ depreciated แล้ว
    announces.assignAll(result); // เก็บค่าทั้งหมดลงใน products
  }
}
