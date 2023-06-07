import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final List<String> images;
  const ImageSlider({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          images[index],
        ))),
      ),
      itemCount: images.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 16 / 7,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
