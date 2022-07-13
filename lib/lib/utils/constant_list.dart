import 'package:flutter/foundation.dart';
import '../core/vos/category_button_vo.dart';

List<CategoryButtonVo> zItemCategoryList = [
  CategoryButtonVo(
      icon: "assets/icons/phone.svg",
      title: "Phone",
      onClick: () => debugPrint("Hello World")),
  CategoryButtonVo(
      icon: "assets/icons/tablet.svg",
      title: "Tablet",
      onClick: () => debugPrint("Hello World")),
  CategoryButtonVo(
      icon: "assets/icons/laptop.svg",
      title: "Laptop",
      onClick: () => debugPrint("Hello World")),
  CategoryButtonVo(
      icon: "assets/icons/tv.svg",
      title: "TV",
      onClick: () => debugPrint("Hello World")),
/*  CategoryButtonVo(icon: "assets/icons/printer.svg", title: "Printer", onClick: ()=> debugPrint("Hello World")),
  CategoryButtonVo(icon: "assets/icons/electronic.svg", title: "Electronic", onClick: ()=> debugPrint("Hello World")),
   CategoryButtonVo(icon: "assets/icons/speaker.svg", title: "Speaker", onClick: ()=> debugPrint("Hello World")),
   CategoryButtonVo(icon: "assets/icons/desktop.svg", title: "Desktop", onClick: ()=> debugPrint("Hello World")),
   CategoryButtonVo(icon: "assets/icons/camera.svg", title: "Camera", onClick: ()=> debugPrint("Hello World")),
   CategoryButtonVo(icon: "assets/icons/category.svg", title: "Category", onClick: ()=> debugPrint("Hello World")),*/
];

const String textAbout =
    "    Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\n    Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n\n    It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\n    It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

const List<String> mVideoList = [
  "https://assets.mixkit.co/videos/preview/mixkit-a-man-lying-on-the-bed-scrolling-food-pictures-on-13169-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-a-man-lying-on-the-bed-scrolling-food-pictures-on-13169-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-a-man-lying-on-the-bed-scrolling-food-pictures-on-13169-large.mp4",
  "https://assets.mixkit.co/videos/preview/mixkit-a-man-lying-on-the-bed-scrolling-food-pictures-on-13169-large.mp4",
];
