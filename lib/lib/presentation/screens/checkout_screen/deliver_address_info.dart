import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/fonts_and_margins_constants.dart';
import '../../reusable_widget/text_view.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _addressInfoWidget(context, "Home Address", Icons.account_circle),
          SizedBox(
            height: kDefaultMarginHeight.h,
          ),
          _addressInfoWidget(context, "09970000234", Icons.phone),
          SizedBox(
            height: kDefaultMarginHeight.h,
          ),
          _addressInfoWidget(context, "80 Street, Corner Of 16 Street, Aungmyaytharzan Tsp, Mandalay", Icons.map_outlined),
        ],
      ),
    );
  }
}
Widget _addressInfoWidget(context,title,IconData iconData) {

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(iconData,size: 22.sp,color: Theme.of(context).primaryColor,),
      SizedBox(width: kDefaultMarginWidth.w,),
      Flexible(child: TextView(title: title, fontSize: kMediumFont14.sp,maxLine: 3,)),
    ],
  );
}