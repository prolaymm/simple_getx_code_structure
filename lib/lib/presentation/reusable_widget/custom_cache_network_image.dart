import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCacheNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;
  final double? radius;
  final double? errorIconSize;
  final IconData? errorIcon;
  final bool? isCircle;
  final BoxFit? boxFit;

  const CustomCacheNetworkImage(
      {Key? key,
      required this.imageUrl,
      required this.height,
      required this.width,
      this.radius,
      this.isCircle,
      this.errorIconSize,
      this.errorIcon,
      this.boxFit})
      : super(key: key);

  // https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        padding: const EdgeInsets.all(2),
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius?.r ?? 0),
          //   color: Colors.red,
          //  shape: isCircle ?? false ? BoxShape.circle : BoxShape.rectangle,
          //  border: Border.all(color:Theme.of(context).colorScheme.secondary),
          image: DecorationImage(
              image: imageProvider, fit: boxFit ?? BoxFit.contain),
        ),
      ),
      placeholder: (context, url) => SizedBox(
          height: 30.h, width: 30.h, child: const CircularProgressIndicator()),
      errorWidget: (context, url, error) => Icon(
        errorIcon ?? Icons.error_outline,
        size: errorIconSize ?? 43.h,
        color: Colors.red,
      ),
    );
  }
}
