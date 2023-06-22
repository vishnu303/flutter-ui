import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Home extends StatelessWidget {
  final List serviceType = [
    {'name': 'Hotel', 'color': Colors.orange, 'icon': Icons.hotel},
    {'name': 'Restaurant', 'color': Colors.green, 'icon': Icons.restaurant},
    {'name': 'Cafe', 'color': Colors.pinkAccent, 'icon': Icons.local_cafe}
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.white,
              ))
        ],
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Type your location',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: SearchBar(
                      leading: Icon(Icons.search),
                    )),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [serviceList(), HotelList()])),
      drawer: const Drawer(),
    );
  }

  Padding serviceList() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: serviceType.map((e) {
          return Container(
            color: e['color'],
            height: 100,
            width: 100,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    e['icon'],
                    color: Colors.white,
                    size: 40,
                  ),
                  Text(
                    '${e['name']}',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )
                ]),
          );
        }).toList(),
      ),
    );
  }
}

class HotelList extends StatelessWidget {
  HotelList({
    super.key,
  });
  final List details = [
    {
      'name': 'Awesome Room Near Bouddha',
      'address': 'Bouddha , kathmandu',
      'reviewCount': 200,
      'price': 20,
      'imgUrl':
          'https://images.pexels.com/photos/1861153/pexels-photo-1861153.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    },
    {
      'name': 'Crown Plaza',
      'address': 'Kochi, kerala',
      'reviewCount': 130,
      'price': 15,
      'imgUrl ':
          'https://images.pexels.com/photos/271624/pexels-photo-271624.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 300,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            color: Colors.amber,
            child: Column(
              children: [
                Image.network(
                  'https://images.pexels.com/photos/1861153/pexels-photo-1861153.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          details[index]['name'],
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          details[index]['address'],
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.green,
                              ),
                              onRatingUpdate: (rating) {
                                debugPrint(rating.toString());
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '(${details[index]['reviewCount']} Reviews)',
                              style: const TextStyle(
                                  fontSize: 17, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      itemCount: details.length,
    );
  }
}
