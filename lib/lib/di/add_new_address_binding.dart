import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/view_model/add_new_address_view_model.dart';

class AddNewAddressBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AddNewAddressViewModel());
  }

}