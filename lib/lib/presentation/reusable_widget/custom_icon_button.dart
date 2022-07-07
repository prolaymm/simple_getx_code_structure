import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import '../../utils/fonts_and_margins_constants.dart';

class CustomIconButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onClick;
  final Color buttonTextColor;
  final Color buttonColor;
  final double? fontSize;
  final double? radius;
  final FontWeight? fontWeight;
  final double? buttonHeight;
  final String icon;
  final double iconSize;
  final Color iconColor;

  const CustomIconButton(
      {Key? key,
      required this.buttonText,
      required this.onClick,
      required this.buttonTextColor,
      required this.buttonColor,
      this.fontSize,
      this.buttonHeight,
      this.fontWeight,
      this.radius,
      required this.icon,
      required this.iconSize,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: buttonHeight ?? 0.08.sh,
        padding: EdgeInsets.all(kSmallMargin.h),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(radius ?? 6.h),
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).hintColor.withOpacity(0.2),
                  offset: const Offset(2, 2),
                  blurRadius: 4,
                  spreadRadius: 4)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: iconColor,
              height: iconSize,
              width: iconSize,
            ),
            SizedBox(
              width: 8.w,
            ),
            Flexible(
              child: TextView(
                maxLine: 2,
                title: buttonText,
                fontWeight: FontWeight.bold,
                color: buttonTextColor,
                fontSize: fontSize ?? kMediumFont14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
