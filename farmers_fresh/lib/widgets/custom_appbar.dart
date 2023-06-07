import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      backgroundColor: const Color(0xff01b748),
      title: const Text('FARMERS FRESH ZONE'),
      titleTextStyle:
          const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      actions: const [
        Row(
          children: [
            Icon(Icons.location_on_outlined),
            Text(
              'KOCHI',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_drop_down),
            )
          ],
        )
      ],
      expandedHeight: 100,
      bottom: AppBar(
        backgroundColor: const Color(0xff01b748),
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
                isDense: true,
                prefixIcon: Icon(Icons.search),
                prefixIconConstraints:
                    BoxConstraints(minHeight: 30, minWidth: 30),
                constraints: BoxConstraints(
                  minHeight: 30,
                ),
                border: InputBorder.none,
                focusColor: Color(0xff01b748),
                filled: true,
                fillColor: Colors.white,
                hintStyle: TextStyle(color: Colors.grey),
                hintText: 'Search for Vegetables, Fruits...'),
          ),
        ),
      ),
    );
  }
}
