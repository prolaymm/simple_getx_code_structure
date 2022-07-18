import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/core/helper/secure_storage_helper.dart';
import 'package:mya_ngwe_san/lib/utils/secure_storage_constant.dart';

class LoginViewModel extends GetxController {
  SecureStorageHelper secureStorageHelper = Get.put(SecureStorageHelper());

  Future<void> login() async {
    bool isSaved = await secureStorageHelper.saveToSecureStorage(
        value: "this is token", key: sToken);

    if (isSaved == true) {
      debugPrint("Success");
    } else {
      debugPrint("Fail");
    }
  }
}
