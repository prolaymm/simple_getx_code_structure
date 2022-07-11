import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/custom_dash_widget.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
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


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextView(title: "Order Summary", fontSize: kExtraLargeFont18.sp,color: Theme.of(context).primaryColor,),
          SizedBox(
            height: kLargeMarginHeight.h,
          ),
           CustomDashWidget(widget: const SizedBox(height: 1,width: double.infinity,),color: Theme.of(context).primaryColor),
          SizedBox(
            height: kDefaultMarginHeight.h,
          ),
          _summaryList(context, "Total Qty", "29040 MMK"),
          SizedBox(height: kLargeMarginHeight.h,),
          _summaryList(context, "Total Qty", "29040 MMK"),
          SizedBox(height: kLargeMarginHeight.h,),
          _summaryList(context, "Total Qty", "29040 MMK"),
          SizedBox(height: kLargeMarginHeight.h,),
          _summaryList(context, "Total Qty", "29040 MMK",color: Theme.of(context).primaryColor),
        ],
      ),

    );
  }
}
Widget _summaryList(context,title,price,{Color? color}) {

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(child: TextView(title: title, fontSize: kMediumFont14.sp,maxLine: 3,fontWeight: FontWeight.bold,)),
      SizedBox(width: kDefaultMarginWidth.w,),
      TextView(title: price, fontSize: kMediumFont14.sp,maxLine: 3,color: color?? Theme.of(context).hintColor,fontWeight: FontWeight.bold,)
    ],
  );
}