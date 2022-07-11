import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';

class MyAddressContainer extends StatelessWidget {

  final String name;
  final String phone;
  final String address;
  final VoidCallback onEditClick;
  final bool? isDefault;
  const MyAddressContainer({Key? key, required this.name, required this.phone, required this.address, required this.onEditClick, this.isDefault}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.map_outlined,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(title: name, fontSize: kExtraLargeFont18.sp),
            TextView(title: phone, fontSize: kLargeFont16.sp,color: Theme.of(context).hintColor,),
            SizedBox(
              height: kDefaultMarginHeight.h,
            ),
            SizedBox(
              width: 0.76.sw,
              child: TextView(
                title: address,
                fontSize: kMediumFont14.sp,
                maxLine: 2,
              ),
            ),
         if(isDefault==true)   Container(
           margin: EdgeInsets.only(top: kSmallMargin.h),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Colors.blue,width: 2),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultMarginWidth.w,
                  vertical: kDefaultMarginHeight.h),
              child: TextView(
                title: "Default Address",
                fontSize: kSmallFont12.sp,
                maxLine: 2,
                color: Colors.blue,
              ),
            )
          ],
        ),
        SizedBox(
          width: kDefaultMarginWidth.w,
        ),
        const Spacer(),
        TextView(
          title: "Edit",
          fontSize: kMediumFont14.sp,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }
}
