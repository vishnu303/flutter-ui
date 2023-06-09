import 'package:flutter/material.dart';
import 'package:music_ui1/ui%20_2/playlist_carousel.dart';
import 'package:music_ui1/ui%20_2/songlist.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        title: const Text(
          'Musify',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff121212),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Suggested Playlist',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffb6c1)),
              ),
              const SizedBox(
                height: 15,
              ),
              PlaylistCarousel(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Recommended for you',
                style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffb6c1)),
              ),
              const SizedBox(
                height: 15,
              ),
              SongList()
            ],
          ),
        ),
      ),
    );
  }
}
