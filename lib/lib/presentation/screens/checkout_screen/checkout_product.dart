import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import '../../../utils/fonts_and_margins_constants.dart';
import '../../reusable_widget/custom_cache_network_image.dart';

class CheckoutProduct extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String qty;
  final String imageUrl;

  const CheckoutProduct(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.qty,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kSmallMargin.w, vertical: kDefaultMarginHeight.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Theme.of(context).shadowColor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.h + 60.w,
            width: 60.h + 60.w,
            child: CustomCacheNetworkImage(
              height: 130.h,
              width: double.infinity,
              radius: 8.r,
              boxFit: BoxFit.contain,
              imageUrl: imageUrl,
            ),
          ),
          SizedBox(
            width: kSmallMargin.w,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextView(title: title, fontSize: kMediumFont14.sp),
                SizedBox(
                  height: kDefaultMarginHeight.h,
                ),
                TextView(
                  title: subtitle,
                  fontSize: kMediumFont14.sp,
                  color: Theme.of(context).hintColor,
                ),
                SizedBox(
                  height: kDefaultMarginHeight.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextView(
                      title: price,
                      fontSize: kMediumFont14.sp,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: kDefaultMarginWidth.w,),
                    TextView(
                      title: "Qty : $qty",
                      fontSize: kMediumFont14.sp,

                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
