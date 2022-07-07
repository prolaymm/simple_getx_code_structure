import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  RxInt zIndex = 0.obs;
  final indicatorDotController = PageController(viewportFraction: 0.8, keepPage: true);

  List<String> mImageSliderData = [
    "https://cdn.pixabay.com/photo/2015/07/28/22/01/office-865091_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/01/27/20/40/laptop-614213_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/07/28/22/01/office-865091_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/01/27/20/40/laptop-614213_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/07/28/22/01/office-865091_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/01/27/20/40/laptop-614213_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/07/28/22/01/office-865091_960_720.jpg",
    "https://cdn.pixabay.com/photo/2015/01/27/20/40/laptop-614213_960_720.jpg",
  ];

  void carouselIndexChange({required int currentIndex}) {
    zIndex.value = currentIndex;
  }
}
