import 'package:flutter/material.dart';
import 'package:hotel_booking/hotel_pack_list.dart';
import 'package:hotel_booking/popular_hotel_list.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List hotelDetails = [
    {
      'name': 'Crown Plazza',
      'imgUrl':
          'https://images.pexels.com/photos/1838640/pexels-photo-1838640.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'details': 'A five star hotel in kochi',
      'price': 180,
      'rating': 4.5,
    },
    {
      'name': 'Merriot',
      'imgUrl':
          'https://images.pexels.com/photos/1697076/pexels-photo-1697076.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'details': 'A five star hotel in kochi',
      'price': 200,
      'rating': 3.5,
    },
    {
      'name': 'Holiday in',
      'imgUrl':
          'https://images.pexels.com/photos/59924/pexels-photo-59924.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'details': 'A five star hotel in kochi',
      'price': 170,
      'rating': 4.8,
    },
    {
      'name': 'Grand hyatt',
      'imgUrl':
          'https://images.pexels.com/photos/2467285/pexels-photo-2467285.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'details': 'A five star hotel in kochi',
      'price': 250,
      'rating': 4.9,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Hello Vishnu',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                'Find Your Favouriate Hotel',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: Image.network(
                'https://images.pexels.com/photos/1699159/pexels-photo-1699159.jpeg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: SearchBar(
                  leading: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search..',
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Popular Hotel',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
              PopularList(
                hotel: hotelDetails,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Hotel Packages',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )),
              HotelPackList(hotels: hotelDetails)
            ],
          ),
        ),
      ),
    );
  }
}
