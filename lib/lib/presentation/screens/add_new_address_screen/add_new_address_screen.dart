import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_button.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_container.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_text_form_field.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import 'package:mya_ngwe_san/lib/presentation/screens/add_new_address_screen/city_and_state_dropdown.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';
import 'package:mya_ngwe_san/lib/view_model/add_new_address_view_model.dart';

import '../../reusable_widget/app_bar_with_drawer.dart';
import '../../reusable_widget/custom_drop_down_button.dart';
import 'custom_switch.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addNewAddressVm = Get.find<AddNewAddressViewModel>();
    return Scaffold(
      appBar: const SimpleAppBarWithBackArrow(
        title: 'Add New Address',
        isBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultMarginWidth.w,
              vertical: kDefaultMarginHeight.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                title: "Name",
                fontSize: kMediumFont14.sp,
                color: Theme.of(context).primaryColor,
              ),
              CustomTextFormField(
                controller: addNewAddressVm.nameTextController,
                hint: "Address Title",
                bgColor: Theme.of(context).shadowColor,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              SizedBox(
                height: 10.h + 10.w,
              ),
              TextView(
                title: "Phone",
                fontSize: kMediumFont14.sp,
                color: Theme.of(context).primaryColor,
              ),
              CustomTextFormField(
                controller: addNewAddressVm.phoneTextController,
                hint: "Phone Number",
                isPhone: true,
                bgColor: Theme.of(context).shadowColor,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              SizedBox(
                height: 10.h + 10.w,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextView(
                      title: "State/ Province",
                      fontSize: kMediumFont14.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: kDefaultMarginWidth.w,
                  ),
                  Expanded(
                    flex: 1,
                    child: TextView(
                      title: "City",
                      fontSize: kMediumFont14.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              CityAndStateDropDown(addNewAddressVm: addNewAddressVm),
              SizedBox(
                height: 10.h + 10.w,
              ),
              TextView(
                title: "Address Detail",
                fontSize: kMediumFont14.sp,
                color: Theme.of(context).primaryColor,
              ),
              CustomTextFormField(
                controller: addNewAddressVm.addressTextController,
                hint: "Street, Apartment, Unit, Building, Floor, etc.",
                maxLine: 5,
                bgColor: Theme.of(context).shadowColor,
                textColor: Theme.of(context).colorScheme.onPrimary,
              ),
              SizedBox(
                height: 10.h + 10.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextView(
                    title: "Make Default Ship Address",
                    fontSize: kMediumFont14.sp,
                  ),
                  SizedBox(
                    width: kDefaultMarginWidth.w,
                  ),
                  Obx(
                    () => CustomSwitch(
                      value: addNewAddressVm.isMakeDefaultAddress.value,
                      onChanged: (bool val) {
                        debugPrint(val.toString());
                        addNewAddressVm.isMakeDefaultAddress.value = val;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h + 30.w,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w),
        child: CustomButton(
            onClick: () {},
            buttonText: 'Save',
            buttonColor: Theme.of(context).primaryColor,
            radius: 6.r,
            buttonTextColor: Theme.of(context).colorScheme.primaryContainer),
      ),
    );
  }
}
