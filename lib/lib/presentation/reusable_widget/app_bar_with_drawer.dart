import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';

import '../../utils/fonts_and_margins_constants.dart';

class AppBarWithDrawer extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Color? textColor;
  final bool isBackArrow;

  const AppBarWithDrawer(
      {Key? key,
        required this.title,
        required this.isBackArrow,
        this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      title: TextView(
        fontSize: kExtraLargeFont18.sp,
        title: title,
        fontWeight: FontWeight.bold,
        color: textColor ?? Theme.of(context).textTheme.bodyText2!.color,
      ),
      centerTitle: true,
      leading: isBackArrow
          ? GestureDetector(
        onTap: () => Get.back(),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 24.sp,
        ),
      )
          : const SizedBox(),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.h);
}
