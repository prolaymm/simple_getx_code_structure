import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';


class OutlineSocialButton extends StatelessWidget {
  final Color? bgColor;
  final String title;
  final Color? iconColor;
  final double? radius;
  final String icon;
  final VoidCallback? onClick;
  final Color? borderColor;

  const OutlineSocialButton({Key? key, this.bgColor, required this.title,  this.iconColor, this.radius, required this.icon, this.borderColor, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: borderColor??Theme.of(context).hintColor),
            borderRadius: BorderRadius.circular(6.r),
            //  color: bgColor,
          ),
          child: ListTile(

            minVerticalPadding:0,
            leading: SvgPicture.asset(icon,height: 14.h+14.w,width: 14.h+14.w,color: iconColor,),
            title: Center(
              child: TextView(
                title: title,
                fontSize: 15.sp,
              ),
            ),
          )),
    );
  }
}
