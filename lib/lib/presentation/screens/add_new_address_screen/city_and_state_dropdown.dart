import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_container.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_drop_down_button.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';
import 'package:mya_ngwe_san/lib/view_model/add_new_address_view_model.dart';

class CityAndStateDropDown extends StatelessWidget {
  final AddNewAddressViewModel addNewAddressVm;

  const CityAndStateDropDown({Key? key, required this.addNewAddressVm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Obx(
              () => CustomContainer(
                  paddingWidth: 6.w,
                  radius: 6.r,
                  color: Theme.of(context).shadowColor,
                  widget: CustomDropDownButton(
                      hintText: "Choose State",
                      itemList: const ["Mandalay", "Yangon", "Ayawaddy"],
                      onChanged: (value) => addNewAddressVm.stateDropDownChange(info: value!),
                      value: addNewAddressVm.isStateDropDownNull.isTrue? addNewAddressVm.nullStateDropDown.value :   addNewAddressVm.stateDropDownValue.value,
                      isSelected: addNewAddressVm.isStateDropDownNull.value)),
            )),
        SizedBox(
          width: kDefaultMarginWidth.w,
        ),
        Expanded(
            flex: 1,
            child: Obx(
              () => CustomContainer(
                  paddingWidth: 6.w,
                  radius: 6.r,
                  color: Theme.of(context).shadowColor,
                  widget: CustomDropDownButton(
                      hintText: "Choose State",
                      itemList: const ["Pyi Gyi Ta gon", "Alone", "Pyin Oo Lwin"],
                      onChanged: (value) => addNewAddressVm.cityDropDownChange(info: value!),
                      value:addNewAddressVm.isCityDropDownNull.isTrue ? addNewAddressVm.nullCityDropDown.value :  addNewAddressVm.cityDropDownValue.value,
                      isSelected: addNewAddressVm.isCityDropDownNull.value)),
            )),
      ],
    );
  }
}
