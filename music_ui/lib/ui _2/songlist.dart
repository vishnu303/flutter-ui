import 'package:flutter/material.dart';

class SongList extends StatelessWidget {
  SongList({super.key});

  final List _songs = [
    {
      'artist': 'Taylor swift',
      'song': 'hero',
      'image':
          'https://wallpapers.com/images/high/album-pictures-1000-x-1000-0u38rnkd960i3sis.webp',
    },
    {
      'artist': 'sam smith',
      'song': 'unholy',
      'image':
          'https://www.rollingstone.com/wp-content/uploads/2022/09/unholy-sam-smith.jpg',
    },
    {
      'artist': 'rihana',
      'song': 'Lift Me Up',
      'image': 'https://static.toiimg.com/photo/msid-95283837/95283837.jpg',
    },
    {
      'artist': 'Dax',
      'song': 'Depression',
      'image':
          'https://lyricsaddiction.com/wp-content/uploads/2022/11/DEPRESSION-LYRICS-BY-DAX-1200x1200.jpg',
    },
    {
      'artist': 'David Guetta',
      'song': 'I\'m good',
      'image':
          'https://i1.sndcdn.com/artworks-TNWpQKVYznWREIH7-Qn7ttQ-t500x500.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (contex, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            leading: Image.network(
              _songs[index]['image'],
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
            title: Text(_songs[index]['song']),
            subtitle: Text(_songs[index]['artist']),
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.download_outlined)
              ],
            ),
          ),
        );
      },
      itemCount: 5,
    );
  }
}
