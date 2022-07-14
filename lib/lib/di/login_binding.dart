import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/view_model/login_view_model.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => LoginViewModel());
  }

}