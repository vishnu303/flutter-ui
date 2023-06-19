import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  final List hotel;
  const PopularList({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 100,
              width: 200,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      hotel[index]['imgUrl'],
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        hotel[index]['name'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        hotel[index]['details'],
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            '\$ ${hotel[index]['price']} / night ',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          child: Text(
                            '${hotel[index]['rating']}',
                            style: TextStyle(fontSize: 14, color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 10, bottom: 5, top: 5),
                          child: Icon(
                            Icons.star,
                            size: 14,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    )
                  ]),
            ),
          );
        },
        itemCount: hotel.length,
      ),
    );
  }
}
