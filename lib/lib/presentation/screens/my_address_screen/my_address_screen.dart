import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_dash_widget.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';

import '../../reusable_widget/app_bar_with_drawer.dart';
import 'my_address_container.dart';

class MyAddressScreen extends StatelessWidget {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBarWithBackArrow(
        title: 'My Address',
        isBackArrow: true,
      ),
      body: Column(
        children: [

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
            child: CustomDashWidget(color: Theme
                .of(context)
                .primaryColor, strokeWidth: 2.0, gap: 3.0, widget: Container(
                width: double.infinity,
                padding: EdgeInsets.all(
                    kDefaultMarginHeight.h + kDefaultMarginWidth.w),
                child: TextView(title: "+ Add Address",
                  textAlign: TextAlign.center,
                  fontSize: kLargeFont16.sp,
                  color: Theme
                      .of(context)
                      .primaryColor,)),),
          ),

          SizedBox(
            height: 20.h,
          ),

          Flexible(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (_, position) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: 6.h),
                child: MyAddressContainer(
                  address: '80 Street, Corner Of 16 Street, Aungmyaytharzan Tsp, Mandalay',
                  name: 'Home Address',
                  phone: '09970000234',
                  onEditClick: () {},
                  isDefault: true,),
              );
            }),
          )

        ],
      ),
    );
  }
}
