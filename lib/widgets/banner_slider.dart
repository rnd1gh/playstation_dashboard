import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:playstation_dashboard/config/constants.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    Key? key,
    required this.bannerHeight,
    required this.maxWidth,
  }) : super(key: key);

  final double bannerHeight;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bannerHeight,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: maxWidth / bannerHeight,
            enlargeCenterPage: false,
          ),
          items: imgList
              .map(
                (e) => Image.network(
                  e,
                  fit: BoxFit.fill,
                  width: maxWidth,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
