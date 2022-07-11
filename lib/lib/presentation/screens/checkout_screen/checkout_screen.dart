import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import 'package:mya_ngwe_san/lib/presentation/router_hadling/route_page_name.dart';
import 'package:mya_ngwe_san/lib/presentation/screens/checkout_screen/deliver_address_info.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';

import '../../reusable_widget/app_bar_with_drawer.dart';
import '../../reusable_widget/custom_product_container.dart';
import 'checkout_product.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBarWithBackArrow(
        title: 'Check Out',
        isBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextView(title: "Delivery Information", fontSize: kLargeFont16.sp),
            SizedBox(
              height: kDefaultMarginHeight.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextView(
                  title: "Address",
                  fontSize: kMediumFont14.sp,
                  color: Theme.of(context).hintColor,
                ),
                GestureDetector(
                    onTap: () => Get.toNamed(RoutePageName.rMyAddress),
                    child: TextView(
                      title: "Change",
                      fontSize: kMediumFont14.sp,
                      color: Theme.of(context).primaryColor,
                    )),
              ],
            ),
            SizedBox(
              height: kDefaultMarginHeight.h,
            ),
            const DeliveryAddress(),
            SizedBox(
              height: kDefaultMarginHeight*2.h,
            ),
            TextView(title: "Delivery Information", fontSize: kLargeFont16.sp),
            SizedBox(
              height: kDefaultMarginHeight.h,
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: Theme.of(context).primaryColor),
             //   foregroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
                onPressed: () => debugPrint("Comming Soon"),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextView(
                        title: "Cash On Delivery",
                        fontSize: kLargeFont16.sp,
                        maxLine: 3,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: kDefaultMarginWidth.w,
                      ),
                      Icon(
                        Icons.check_circle,
                        size: 22.sp,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: kDefaultMarginHeight.h,
            ),
            const Divider(),
            SizedBox(
              height: kDefaultMarginHeight.h,
            ),
            SizedBox(
              height: 112.h+112.w,

              child: ListView.builder(
                  itemCount: 20,
               //   scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (co_, position) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: kSmallMargin.w,vertical: kSmallMargin.h),
                      height: 70.h+70.w,
                      width:double.infinity,
                      child: CheckoutProduct(title: 'Dell Inspiron dadad ada dad ada', imageUrl: 'https://cdn.pixabay.com/photo/2016/03/23/04/44/fruits-and-vegetables-1274079_960_720.png', price: 'MMK 20000', subtitle: 'M6R4', qty: '20',)
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
