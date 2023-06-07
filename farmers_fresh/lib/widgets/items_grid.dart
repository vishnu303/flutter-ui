import 'package:flutter/material.dart';

class ItemsGrid extends StatelessWidget {
  final List items;
  const ItemsGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: .8,
          crossAxisCount: 2),
      itemBuilder: (context, index) => Container(
        decoration:
            BoxDecoration(border: Border.all(color: const Color(0xffcde0d5))),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(items[index]['Image']))),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(items[index]['Name']),
              const SizedBox(
                height: 10,
              ),
              Text(
                '₹${items[index]['Rate']}',
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(items[index]['Qty']),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 25),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff01b748)),
                    ),
                    child: const Text(
                      'Add',
                      style: TextStyle(fontSize: 14),
                    ),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
