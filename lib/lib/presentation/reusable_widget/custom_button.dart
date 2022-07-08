import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';

import '../../utils/fonts_and_margins_constants.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onClick;
  final Color? buttonTextColor;
  final Color? buttonColor;
  final double? fontSize;
  final double? radius;
  final FontWeight? fontWeight;
  final double? buttonHeight;

  const CustomButton(
      {Key? key,
      required this.buttonText,
      required this.onClick,
       this.buttonTextColor,
       this.buttonColor,
      this.fontSize,
      this.buttonHeight,
      this.fontWeight,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: buttonHeight ?? 20.h+20.w,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? kMediumFont14.sw)),
      color: buttonColor,
      onPressed: onClick,
      child: TextView(
        title: buttonText,
        fontWeight: fontWeight,
        color: buttonTextColor,
        fontSize: fontSize ?? kMediumFont14.sp,
      ),
    );
  }
}
