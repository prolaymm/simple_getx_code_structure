import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mya_ngwe_san/lib/presentation/reusable_widget/text_view.dart';
import 'package:mya_ngwe_san/lib/utils/fonts_and_margins_constants.dart';
import 'package:mya_ngwe_san/lib/view_model/how_to_view_model.dart';
import 'package:video_player/video_player.dart';

import '../../reusable_widget/app_bar_with_drawer.dart';
import '../../reusable_widget/custom_container.dart';

class HowToScreen extends StatelessWidget {
  const HowToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final howToVm = Get.find<HowToViewModel>();
    return Scaffold(
      appBar: const SimpleAppBarWithBackArrow(
        title: 'FAQs',
        isBackArrow: true,
      ),
      body: ListView.builder(
        itemCount: howToVm.mVideoControllerList.length,
        itemBuilder: (_, position) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultMarginWidth.w,vertical: kDefaultMarginHeight.h),
            child: CustomContainer(
              height: 150.h,
              radius: 8.r,
              color: Theme.of(context).colorScheme.primaryContainer,

              paddingHeight: kLargeMarginHeight.h,
              paddingWidth: kLargeMarginWidth.w,
              boxShadow: [
                BoxShadow(
                    color: Theme.of(context).shadowColor.withOpacity(0.4),
                    offset: const Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 2)
              ],
              //   margin: EdgeInsets.all(8.w),
              width: double.infinity,
              widget: Row(
                children: [
                  AspectRatio(
                    aspectRatio: 2 / 1.5,
                    child: GestureDetector(
                      onTap: () {
                        howToVm.playPauseVideo(position);
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.r),
                            child:
                                VideoPlayer(howToVm.mVideoControllerList[position]),
                          ),
                          Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              top: 0,
                              child: Icon(

                                howToVm.mVideoControllerList[position].value.isPlaying? Icons.pause_circle : Icons.play_circle,color: Theme.of(context).primaryColor,size: 33.sp,))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: kDefaultMarginWidth.w,
                  ),
                  Flexible(
                      child: TextView(
                          title: "How to use Mya Ngwe San",
                          fontSize: kLargeFont16.sp))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
