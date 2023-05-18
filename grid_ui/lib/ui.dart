import 'package:flutter/material.dart';

class GridUi extends StatelessWidget {
  GridUi({super.key});
  final List colors = [
    Colors.red,
    Colors.lightGreen,
    Colors.yellow,
    Colors.purple,
    Colors.red,
    Colors.green,
    Colors.blueGrey,
    Colors.purple,
    Colors.pinkAccent,
    Colors.cyanAccent,
    Colors.blue,
    Colors.amberAccent,
  ];

  final List icn = [
    Icons.home,
    Icons.alarm,
    Icons.golf_course,
    Icons.location_city,
    Icons.web_asset,
    Icons.radar,
    Icons.paid_sharp,
    Icons.umbrella,
    Icons.kayaking_sharp,
    Icons.explore_sharp,
    Icons.markunread_sharp,
    Icons.dangerous,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('GridUi'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 2),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: colors[index],
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 7,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      icn[index],
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Heart Shaker")
                  ],
                ),
              );
            },
            itemCount: 12,
          ),
        ));
  }
}
