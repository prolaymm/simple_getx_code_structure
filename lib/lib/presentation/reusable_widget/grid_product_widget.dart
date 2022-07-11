import 'package:flutter/material.dart';

class GridProductWidget extends StatelessWidget {


  final bool? isBanner;
  final String? bannerTitle;
  final bool? isDiscount;
  final String price;
  final String? discountPrice;
  final bool? isFavoriteActive;
  final String imageUrl;
  final String productInformation;

  const GridProductWidget(
      {Key? key, this.isBanner, this.bannerTitle, this.isDiscount, required this.price, this.discountPrice, this.isFavoriteActive, required this.imageUrl, required this.productInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Banner(
        message: "20%",
        location: BannerLocation.topStart,
        color: Colors.red,
        child: Container(
          color: Colors.yellow,
          height: 100,
          width: 100,
          child: const Text("Hello, banner!"),
        ),
      ),
    );
  }
}
