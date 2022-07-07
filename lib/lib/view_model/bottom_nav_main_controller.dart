import 'package:get/get.dart';

class BottomNavMainController extends GetxController {
  RxInt index = 0.obs;


  void onNavigationChange(int currenIndex) {
    index.value = currenIndex;
  }
}
