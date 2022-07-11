import 'package:flutter/material.dart';

import '../../core/painter/dash_rect_painter.dart';

class CustomDashWidget extends StatelessWidget {
  final Color color;
  final double strokeWidth;
  final double gap;
  final Widget widget;

  const CustomDashWidget(
      { Key? key, this.color = Colors.black, this.strokeWidth = 1.0, this.gap = 5.0, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(strokeWidth / 2),
      child: CustomPaint(
        painter:
        DashRectPainter(color: color, strokeWidth: strokeWidth, gap: gap),
        child: widget,
      ),
    );
  }
}
