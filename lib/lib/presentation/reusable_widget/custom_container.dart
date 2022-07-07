import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? radius;
  final double? paddingWidth;
  final double? paddingHeight;
  final Color? color;
  final double? height;
  final double? width;
  final Widget? widget;
  final List<BoxShadow>? boxShadow;

  const CustomContainer(
      {Key? key,
      this.radius,
      this.widget,
      this.color,
      this.boxShadow,
      this.height,
      this.width, this.paddingWidth, this.paddingHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: paddingWidth??0,vertical: paddingHeight??0),
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(radius ?? 0),
          boxShadow: boxShadow),
      child: widget,
    );
  }
}
