import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Theme.of(context).shadowColor),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultMarginWidth.w, vertical: kDefaultMarginHeight.h),


    );
  }
}
