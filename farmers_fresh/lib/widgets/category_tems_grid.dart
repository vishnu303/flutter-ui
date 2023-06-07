import 'package:farmers_fresh/utils/assets.dart';
import 'package:flutter/material.dart';

class CategoryItemGrid extends StatelessWidget {
  const CategoryItemGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categoryImages.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: .9,
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 2,
                color: Color.fromRGBO(0, 0, 0, 0.16),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(
                      image: NetworkImage(categoryImages[index]),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                chips[index],
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
