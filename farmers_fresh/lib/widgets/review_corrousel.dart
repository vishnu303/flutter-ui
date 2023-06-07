import 'package:carousel_slider/carousel_slider.dart';
import 'package:farmers_fresh/utils/assets.dart';
import 'package:farmers_fresh/widgets/coustomer_reviews.dart';
import 'package:flutter/material.dart';

class ReviewCorousel extends StatelessWidget {
  const ReviewCorousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => CustomerReviews(
        name: reviews[index]['Name'],
        designation: reviews[index]['Designation'],
        image: reviews[index]['image'],
        reviewText: reviews[index]['reviewText'],
      ),
      itemCount: reviews.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 1.6,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
