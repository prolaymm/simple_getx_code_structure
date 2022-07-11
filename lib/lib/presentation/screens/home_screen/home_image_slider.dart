import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../view_model/home_view_model.dart';
import '../../reusable_widget/custom_cache_network_image.dart';

class HomeImageSlider extends StatelessWidget {
  final HomeViewModel homeVm;

  const HomeImageSlider({Key? key, required this.homeVm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: CarouselSlider(
            options: CarouselOptions(
                height: 150.h,
                autoPlay: true,
                viewportFraction: 1,
                onPageChanged: (currentIndex, _) {
                  homeVm.carouselIndexChange(currentIndex: currentIndex);
                  debugPrint(homeVm.zIndex.toString());
                },
                autoPlayAnimationDuration: const Duration(seconds: 1)),
            items: homeVm.mImageSliderData
                .map(
                  (i) => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomCacheNetworkImage(
                        imageUrl: i,
                        height: 200.h,
                        radius: 8.r,
                        width: double.infinity,
                        boxFit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),


    );
  }
}
/*Center(
              child: Obx(
                () => AnimatedSmoothIndicator(
                  // PageController
                  duration: Duration(milliseconds:500),
                  count: homeVm.mImageSliderData.length,
                  // forcing the indicator to use a specific direction
                  textDirection: TextDirection.ltr,
                  effect: ExpandingDotsEffect(),
                  activeIndex: homeVm.zIndex.value,
                ),
              ),
            )*/
