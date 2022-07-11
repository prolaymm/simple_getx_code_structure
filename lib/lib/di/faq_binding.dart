import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/view_model/faq_view_model.dart';

class FAQBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => FAQViewModel());
  }

}