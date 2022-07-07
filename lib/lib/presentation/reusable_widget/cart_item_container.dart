import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import '../../utils/fonts_and_margins_constants.dart';
import 'custom_cache_network_image.dart';

class CartItemContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final IconData suffixIcon;
  final String quantity;
  final VoidCallback onSuffixIconClick;
  final Color suffixIconColor;
  final double imageRadius;
  final double imageWidth;
  final double imageHeight;
  final String price;

  const CartItemContainer(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.onIncrement,
      required this.onDecrement,
      required this.suffixIcon,
      required this.onSuffixIconClick,
      required this.quantity,
      required this.suffixIconColor,
      required this.imageRadius,
      required this.imageWidth,
      required this.imageHeight,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCacheNetworkImage(
          imageUrl: imageUrl,
          height: imageWidth,
          width: imageHeight,
          radius: imageRadius.r,
        ),
        SizedBox(
          width: kSmallMargin.w,
        ),
        Flexible(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                title: "jdajjda dja djadj jadjajdjad dolaodadnda da dlad ",
                fontSize: kMediumFont14.sp,
                maxLine: 2,
              ),
              SizedBox(
                height: kDefaultMarginHeight.h,
              ),
              TextView(
                title: price,
                fontSize: kMediumFont14.sp,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(
                height: kDefaultMarginHeight.h,
              ),
              Container(
                color: Theme.of(context).hintColor.withOpacity(0.3),
                width: 90.w,
                padding: EdgeInsets.all(kSmallMargin.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () => debugPrint("Hello World"),
                        child: Icon(
                          Icons.add,
                          size: 24.sp,
                        )),
                    SizedBox(
                      width: kDefaultMarginWidth.h,
                    ),
                    TextView(title: quantity, fontSize: kLargeFont16.sp),
                    SizedBox(
                      width: kDefaultMarginWidth.h,
                    ),
                    GestureDetector(
                        onTap: () => debugPrint("Hello World"),
                        child: Icon(
                          Icons.remove_circle_outline,
                          size: 24.sp,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: kSmallMargin.w,
        ),
        const Spacer(),
        GestureDetector(
            onTap: () => debugPrint("Hello World"),
            child: Icon(
              suffixIcon,
              size: 24.sp,
              color: suffixIconColor,
            )),
      ],
    );
  }
}
