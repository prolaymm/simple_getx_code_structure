import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import '../../utils/fonts_and_margins_constants.dart';

class RightIconButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onClick;
  final Color buttonTextColor;
  final Color buttonColor;
  final double? fontSize;
  final double? radius;
  final FontWeight? fontWeight;
  final double? buttonHeight;
  final IconData icon;
  final bool? isElevation;
  final bool? isSplash;
  final double? iconsSize;

  const RightIconButton({Key? key,
    required this.buttonText,
    required this.onClick,
    required this.buttonTextColor,
    required this.buttonColor,
    this.fontSize,
    this.buttonHeight,
    this.fontWeight,
    this.radius, required this.icon, this.iconsSize, this.isElevation, this.isSplash})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: buttonHeight ?? 0.056.sh,

      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? kMediumFont14.sw)),
      color: buttonColor,
      splashColor: isSplash ?? true ? Theme.of(context).hintColor.withOpacity(0.2) : Colors.transparent,
      onPressed: onClick,
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextView(
            title: buttonText,
            fontWeight: fontWeight,
            color: buttonTextColor,
            fontSize: fontSize ?? kMediumFont14.sp,
          ),
          Icon(icon, size: iconsSize ?? 20.sp, color: buttonTextColor,)

        ],
      ),
    );
  }
}