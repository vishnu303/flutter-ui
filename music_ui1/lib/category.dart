import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({super.key});

  final List categoryList = [
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
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1),
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: categoryList[index]['color'],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 7,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Center(
                  child: Text(
                categoryList[index]['title'],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )));
        },
        itemCount: categoryList.length,
      ),
    );
  }
}
