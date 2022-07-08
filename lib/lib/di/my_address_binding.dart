import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/view_model/my_address_view_model.dart';

class MyAddressBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => MyAddressViewModel());
  }

}