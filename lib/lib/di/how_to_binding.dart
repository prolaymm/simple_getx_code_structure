import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/view_model/how_to_view_model.dart';

class HowToBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HowToViewModel());
  }

}