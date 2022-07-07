import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import '../../utils/fonts_and_margins_constants.dart';

class GradientContainerWithBackArrow extends StatelessWidget {
  final String title;
  final bool? isBack;
  final Color titleColor;

  const GradientContainerWithBackArrow(
      {Key? key, required this.title, required this.titleColor, this.isBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Theme.of(context).primaryColor, const Color(0xffb00520)],
      )),
      child: Row(
           mainAxisAlignment: isBack??true?  MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: kDefaultMarginWidth.w,
          ),
        isBack??true?   GestureDetector(
          onTap: ()=> Get.back(),
          child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 30.h,
              color: titleColor,
            ),
        ) : const SizedBox(),
          SizedBox(
            width: 16.w,
          ),
          TextView(
            title: title,
            fontSize: kExtraLargeFont18.sp,
            fontWeight: FontWeight.bold,
            color: titleColor,
          ),
        ],
      ),
    );
  }
}
