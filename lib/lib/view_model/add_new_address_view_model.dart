import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewAddressViewModel extends GetxController {
  TextEditingController nameTextController = TextEditingController();
  TextEditingController phoneTextController = TextEditingController();
  TextEditingController addressTextController = TextEditingController();

  RxBool isMakeDefaultAddress = false.obs;

  ///for city drop down
  RxString cityDropDownValue = ''.obs;
  RxBool isCityDropDownNull = true.obs;
  Rx nullCityDropDown = null.obs;

  ///for  state drop down
  RxString stateDropDownValue = ''.obs;
  RxBool isStateDropDownNull = true.obs;
  Rx nullStateDropDown = null.obs;

  /// for state drop down change
  stateDropDownChange({required String info}) {
    isStateDropDownNull.value = false;
    stateDropDownValue.value = info;
  }

  ///for city drop down change
  cityDropDownChange({required String info}) {
    isCityDropDownNull.value = false;
    cityDropDownValue.value = info;
  }
}
