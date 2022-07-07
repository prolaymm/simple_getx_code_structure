import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/fonts_and_margins_constants.dart';


class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String hint;
  final bool? isPassword;
  final bool? isIcon;
  final int? maxLine;
  final String? Function(String?)? validator;
  final bool? isPhone;
  final Color? bgColor;
  final Color? textColor;
  final bool? isSuffixIcon;
  final VoidCallback? suffixIconOnClick;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final double? radius;
  final double? height;
  final bool? isContentPadding;

  const CustomTextFormField({Key? key,
    required this.controller,
    required this.icon,
    required this.hint,
    this.isPhone,
    this.isPassword,
    this.isIcon,
    this.validator,
    this.bgColor,
    this.textColor,
    this.maxLine,
    this.isSuffixIcon,
    this.suffixIcon,
    this.suffixIconOnClick,
    this.isContentPadding,
    this.suffixIconColor, this.radius, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 4.w),
          color: bgColor ?? Theme
              .of(context)
              .primaryColor),
      child: Center(
        child: TextFormField(
          obscureText: isPassword ?? false,
          controller: controller,
          keyboardType: TextInputType.multiline,
          maxLines: maxLine ?? 1,
          style: TextStyle(
            fontSize: kMediumFont14.sp,
            color: textColor ?? Theme
                .of(context)
                .colorScheme
                .primaryContainer,
          ),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
            focusColor: bgColor ?? Theme
                .of(context)
                .colorScheme
                .primaryContainer,
            contentPadding: isContentPadding ?? true
                ? EdgeInsets.fromLTRB(0.03.sh, 0.01.sh, 0.01.sh, 0)
                : EdgeInsets.fromLTRB(0.03.sh, 0.01.sh, 0.01.sh, 0.01.sh),
            //add prefix icon
            /* prefixIcon: Icon(icon,
                size: 20.sp,
                color: textColor??Theme.of(context).colorScheme.primaryContainer),*/
            suffixIcon: isSuffixIcon ?? false
                ? GestureDetector(
              onTap: suffixIconOnClick,
              child: Icon(
                suffixIcon,
                size: 28.sp,
                color: suffixIconColor ?? Theme
                    .of(context)
                    .colorScheme
                    .onPrimary,
              ),
            )
                : const SizedBox(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.w),
              borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
              borderRadius: BorderRadius.circular(4.w),
            ),
            fillColor: bgColor ?? Theme
                .of(context)
                .colorScheme
                .primaryContainer,

            hintText: hint,
            //make hint text
            hintStyle: TextStyle(
              color: Theme
                  .of(context)
                  .hintColor,
              fontSize: kMediumFont14.sp,
            ),
          ),
          validator: validator,
        ),
      ),
    );
  }
}
