import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';

import '../../reusable_widget/app_bar_with_drawer.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBarWithBackArrow(
        title: 'FAQs',
        isBackArrow: true,
      ),

      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
        child: Column(
          children: [

            Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.h,),

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
                    child: TextView(title: "What is redeemable Point", fontSize: kLargeFont16.sp,fontWeight: FontWeight.bold,),
                  ),
               const   Divider(),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
                    child: TextView(title: "Contrary to the existing presumptions, the researchers find that the customer's decision to redeem a reward, by itself, significantly enhances his/her purchase behavior before and after redemption", fontSize: kMediumFont14.sp,color: Theme.of(context).hintColor,),

                  ),
                  SizedBox(height: 8.h,),

                ],
              ),
            ),

            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 3,
              child:  Container(
                width: double.infinity,
                padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
                child: TextView(title: "What item can i Redeem?", fontSize: kLargeFont16.sp,fontWeight: FontWeight.bold,),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 3,
              child:  Container(
                width: double.infinity,
                padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
                child: TextView(title: "How to update my Profile", fontSize: kLargeFont16.sp,fontWeight: FontWeight.bold,),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Card(
              elevation: 3,
              child:  Container(
                width: double.infinity,
                padding:  EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
                child: TextView(title: "What is redeemable Point", fontSize: kLargeFont16.sp,fontWeight: FontWeight.bold,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
