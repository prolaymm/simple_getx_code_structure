import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../utils/constant_list.dart';
import '../../../utils/fonts_and_margins_constants.dart';
import '../../../view_model/home_view_model.dart';
import '../../reusable_widget/custom_container.dart';
import '../../reusable_widget/custom_product_container.dart';
import '../../reusable_widget/custom_text_form_field.dart';
import '../../reusable_widget/text_view.dart';
import 'home_image_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchTextController = TextEditingController();

    final homeVm = Get.find<HomeViewModel>();
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 0.3.sh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r)),
                color: Theme.of(context).primaryColor,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 22.h + 22.w,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: kDefaultMarginWidth.w,
                    ),
                    Flexible(
                      child: CustomTextFormField(
                        controller: searchTextController,
                        isSuffixIcon: true,
                        suffixIcon: Icons.search,
                        suffixIconColor: Theme.of(context).hintColor,
                        icon: Icons.search,
                        height: 50.h,
                        hint: "Search",
                        radius: 8.r,
                        bgColor: Theme.of(context).colorScheme.primaryContainer,
                        textColor: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Container(
                      height: 45.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 5),
                      margin: EdgeInsets.symmetric(
                          horizontal: kDefaultMarginWidth.w),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(4.r)),
                      child: Stack(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            size: 28.sp,
                          ),
                          Positioned(
                              right: 0,
                              child: CustomContainer(
                                  radius: 20.r,
                                  width: 16.h,
                                  height: 16.h,
                                  color: Theme.of(context).primaryColor,
                                  widget: TextView(
                                    title: "1",
                                    fontSize: 10.sp,
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultMarginHeight.h,
                ),
                Flexible(
                  child: SingleChildScrollView(
                    //  physics: ScrollPhysics(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: kDefaultMarginWidth.w,
                          vertical: kDefaultMarginHeight.h),
                      child: Column(
                        children: [
                          HomeImageSlider(homeVm: homeVm),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0;
                                    i < homeVm.mImageSliderData.length;
                                    i++)
                                  Obx(() => Container(
                                        width: homeVm.zIndex.value == i
                                            ? 19.h + 19.w
                                            : 10.h,
                                        margin: EdgeInsets.all(4.h),
                                        height: 10.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50.r),
                                            color: homeVm.zIndex.value == i
                                                ? Theme.of(context).errorColor
                                                : Theme.of(context)
                                                    .shadowColor),
                                      ))
                              ]),
                          SizedBox(
                            height: 20.h,
                          ),

                          Row(
                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(
                                title: "Category",
                                fontSize: kLargeFont16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: kDefaultMarginWidth.w,
                              ),
                              const Spacer(),
                              TextView(
                                title: "View All",
                                fontSize: kMediumFont14.sp,
                                color: Theme.of(context).errorColor,
                              ),

                            ],
                          ),

                          SizedBox(
                            height:50.h+50.w,

                            child: ListView (
                              scrollDirection: Axis.horizontal,
                             // crossAxisAlignment: CrossAxisAlignment.center,
                              children: zItemCategoryList
                                  .map((category) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: GestureDetector(
                                          onTap: category.onClick,
                                          child: CustomContainer(
                                            color: Theme.of(context)
                                                .shadowColor,
                                            radius:4.r,
                                            width:50.h+50.w ,
                                            paddingHeight: 6.w + 6.h,
                                            paddingWidth: 6.w + 6.h,
                                            //    height: 50.h,
                                            widget: Column(
                                              children: [
                                                SvgPicture.asset(
                                                  category.icon,
                                                  width: 18.h + 18.w,
                                                  height: 18.h + 18.w,
                                                ),
                                                SizedBox(
                                                  height: 6.h,
                                                ),
                                                TextView(
                                                    title: category.title,
                                                    color: Theme.of(context).primaryColor,
                                                    fontSize: kSmallFont12.sp)
                                              ],
                                            ),
                                            //   width: 50.h,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(
                                title: "All Brannds",
                                fontSize: kLargeFont16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: kDefaultMarginWidth.w,
                              ),
                              const Spacer(),
                              TextView(
                                title: "View All",
                                fontSize: kMediumFont14.sp,
                                color: Theme.of(context).errorColor,
                              ),

                            ],
                          ),

                          SizedBox(
                            height: kDefaultMarginHeight.h,
                          ),
                          SizedBox(
                                 height: 112.h+112.w,

                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (co_, position) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: kSmallMargin.w),
                                    height: 90.h+90.w,
                                    width: 90.h+90.w,
                                    child: CustomProductContainer(
                                        price: "MMK 20000",
                                        isDiscount: true,
                                        discountPrice: "MMK 2000",
                                        imageUrl:
                                            "https://cdn.pixabay.com/photo/2016/11/26/12/52/bottle-1860617_960_720.png",
                                        productInformation:
                                            "No data available addhad ad adja dql daooa",
                                        onAddItemClick: () =>
                                            debugPrint("Hell oworld")),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(
                                title: "All Brannds",
                                fontSize: kLargeFont16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: kDefaultMarginWidth.w,
                              ),
                              const Spacer(),
                              TextView(
                                title: "View All",
                                fontSize: kMediumFont14.sp,
                                color: Theme.of(context).errorColor,
                              ),

                            ],
                          ),

                          SizedBox(
                            height: kDefaultMarginHeight.h,
                          ),
                          SizedBox(
                            height: 112.h+112.w,
                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (co_, position) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: kSmallMargin.w),
                                    height: 90.h+90.w,
                                    width: 90.h+90.w,
                                    child: CustomProductContainer(
                                        price: "MMK 20000",
                                        isDiscount: true,
                                        discountPrice: "MMK 2000",
                                        imageUrl:
                                        "https://cdn.pixabay.com/photo/2016/11/26/12/52/bottle-1860617_960_720.png",
                                        productInformation:
                                        "No data available addhad ad adja dql daooa",
                                        onAddItemClick: () =>
                                            debugPrint("Hell oworld")),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(
                                title: "All Brannds",
                                fontSize: kLargeFont16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: kDefaultMarginWidth.w,
                              ),
                              const Spacer(),
                              TextView(
                                title: "View All",
                                fontSize: kMediumFont14.sp,
                                color: Theme.of(context).errorColor,
                              ),

                            ],
                          ),

                          SizedBox(
                            height: kDefaultMarginHeight.h,
                          ),
                          SizedBox(
                                 height: 112.h+112.w,

                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (co_, position) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: kSmallMargin.w),
                                    height: 90.h+90.w,
                                    width: 90.h+90.w,
                                    child: CustomProductContainer(
                                        price: "MMK 20000",
                                        isDiscount: true,
                                        discountPrice: "MMK 2000",
                                        imageUrl:
                                        "https://cdn.pixabay.com/photo/2016/11/26/12/52/bottle-1860617_960_720.png",
                                        productInformation:
                                        "No data available addhad ad adja dql daooa",
                                        onAddItemClick: () =>
                                            debugPrint("Hell oworld")),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextView(
                                title: "All Brannds",
                                fontSize: kLargeFont16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(
                                width: kDefaultMarginWidth.w,
                              ),
                              const Spacer(),
                              TextView(
                                title: "View All",
                                fontSize: kMediumFont14.sp,
                                color: Theme.of(context).errorColor,
                              ),

                            ],
                          ),

                          SizedBox(
                            height: kDefaultMarginHeight.h,
                          ),
                          SizedBox(
                                 height: 112.h+112.w,

                            child: ListView.builder(
                                itemCount: 20,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (co_, position) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: kSmallMargin.w),
                                    height: 90.h+90.w,
                                    width: 90.h+90.w,
                                    child: CustomProductContainer(
                                        price: "MMK 20000",
                                        isDiscount: true,
                                        discountPrice: "MMK 2000",
                                        imageUrl:
                                        "https://cdn.pixabay.com/photo/2016/11/26/12/52/bottle-1860617_960_720.png",
                                        productInformation:
                                        "No data available addhad ad adja dql daooa",
                                        onAddItemClick: () =>
                                            debugPrint("Hell oworld")),
                                  );
                                }),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
