import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../utils/fonts_and_margins_constants.dart';
import '../../../view_model/bottom_nav_main_controller.dart';

class BuildBottomItemBar extends StatelessWidget {
  final BottomNavMainController bottomNavMainController;

  const BuildBottomItemBar({Key? key, required this.bottomNavMainController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavMainController.index.value,
      selectedFontSize: kMediumFont14.sp,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedFontSize: kMediumFont14.sp,
      selectedLabelStyle: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      iconSize: 24.h,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      onTap: (int currentIndex) =>
          bottomNavMainController.onNavigationChange(currentIndex),
      items: [
        buildItem(
            index: 0,
            icon: "assets/icons/home.svg",
            title: "Home",
            context: context,
            bottomNavMainController: bottomNavMainController),
        buildItem(
            index: 1,
            icon: "assets/icons/heart.svg",
            title: "Wishlist",
            context: context,
            bottomNavMainController: bottomNavMainController),
        buildItem(
            index: 2,
            icon: "assets/icons/basket.svg",
            title: "Basket",
            context: context,
            bottomNavMainController: bottomNavMainController),
        buildItem(
            index: 3,
            icon: "assets/icons/order.svg",
            title: "Orders",
            context: context,
            bottomNavMainController: bottomNavMainController),
        buildItem(
            index: 4,
            icon: "assets/icons/setting.svg",
            title: "Setting",
            context: context,
            bottomNavMainController: bottomNavMainController),
      ],
    );
  }
}

BottomNavigationBarItem buildItem(
    {required int index,
    required context,
    required String icon,
    customIcon,
    required String title,
    required BottomNavMainController bottomNavMainController}) {
  return BottomNavigationBarItem(
      icon: customIcon ??
          SvgPicture.asset(
            icon,
            color: bottomNavMainController.index.value == index
                ? Theme.of(context).primaryColor
                : Theme.of(context).hintColor,
            height: 24.h,
          ),
      label: title);
}
