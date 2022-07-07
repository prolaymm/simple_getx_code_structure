import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/fonts_and_margins_constants.dart';
import '../../../view_model/bottom_nav_main_controller.dart';
import '../../reusable_widget/text_view.dart';
import '../home_screen/home_screen.dart';
import 'build_bottom_nav_bar.dart';


class BottomNavMain extends StatelessWidget {
  const BottomNavMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<BottomNavMainController>();
    return Obx(
      () => Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: navController.index.value,
          children:  [
            const HomeScreen(),
            TextView(title: "Wish List", fontSize: kLargeFont16.sp),
            TextView(title: "Basket", fontSize: kLargeFont16.sp),
            TextView(title: "Order", fontSize: kLargeFont16.sp),
            TextView(title: "Setting", fontSize: kLargeFont16.sp),

          ],
        ),
        bottomNavigationBar: BuildBottomItemBar(
          bottomNavMainController: navController,
        ),
      ),
    );
  }
}
