import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:mya_ngwe_san/lib/view_model/checkout_view_model.dart';

class CheckoutBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => CheckoutViewModel());
  }

}