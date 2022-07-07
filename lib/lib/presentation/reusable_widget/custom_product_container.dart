import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';

import '../../utils/fonts_and_margins_constants.dart';
import 'custom_cache_network_image.dart';


class CustomProductContainer extends StatelessWidget {
  final Color? bgColor;
  final bool? isDiscount;
  final String price;
  final String? discountPrice;
  final bool? isFavoriteActive;
  final String imageUrl;
  final double? height;
  final double? width;
  final String productInformation;
  final VoidCallback onAddItemClick;

  const CustomProductContainer(
      {Key? key,
      this.bgColor,
      this.isDiscount,
      required this.price,
      this.discountPrice,
      this.isFavoriteActive,
      required this.imageUrl,
      required this.productInformation,
      required this.onAddItemClick,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(6.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Theme.of(context).shadowColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: kSmallMargin.h,
          ),
          SizedBox(
            height: height?.h ?? 130.h,
            child: CustomCacheNetworkImage(
              height: height?.h ?? 130.h,
              width: double.infinity,
              radius: 8.r,
              boxFit: BoxFit.contain,
              imageUrl:
                  imageUrl,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          TextView(
            title: productInformation,
            fontSize: kMediumFont14.sp,
            maxLine: 2,
          //  color: Theme.of(context).hintColor,
          ),

         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 TextView(
                   title: discountPrice ?? "discount price",
                   decoration: TextDecoration.lineThrough,
                   fontSize: kSmallFont12.sp,
                   color: Theme.of(context).hintColor,
                 ),
                 TextView(
                   title: price,
                   fontSize: kLargeFont16.sp,
                   color: Theme.of(context).errorColor,
                 ),
               ],
             ),
             const Spacer(),
             GestureDetector(
               onTap: onAddItemClick,
               child: CircleAvatar(
                   radius: 16.r,
                   backgroundColor: Theme.of(context).primaryColor,
                   child: Center(child:  Icon(Icons.add,size: 12.h+12.w,color: Theme.of(context).colorScheme.primaryContainer,))),
             ),


           ],
         ),
          SizedBox(
            height: kSmallMargin.h,
          )


        ],
      ),
    );
  }
}
