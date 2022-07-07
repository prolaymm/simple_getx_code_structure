import 'package:get/get.dart';
import '../view_model/bottom_nav_main_controller.dart';
import '../view_model/home_view_model.dart';

class BottomNavMainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => BottomNavMainController());
    Get.lazyPut(() => HomeViewModel());
  }

}