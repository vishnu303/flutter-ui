import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PlaylistCarousel extends StatelessWidget {
  PlaylistCarousel({super.key});
  final List playlist = [
    {
      'title': 'Top 50',
      'color': Colors.lightGreen,
    },
    {
      'title': 'POP MUSIC',
      'color': Colors.lightBlue,
    },
    {
      'title': 'LOFI MUSIC',
      'color': Colors.deepOrangeAccent,
    },
    {
      'title': 'CAR MUSIC',
      'color': Colors.redAccent,
    },
    {
      'title': 'ROCK MUSIC',
      'color': Colors.brown,
    },
    {
      'title': 'HIP HOP ',
      'color': Colors.cyanAccent,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: playlist[index]['color'],
            borderRadius: BorderRadius.circular(22)),
        child: Center(
          child: Text(
            playlist[index]['title'],
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      itemCount: playlist.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.7,
        enableInfiniteScroll: true,
        autoPlay: false,
      ),
    );
  }
}
