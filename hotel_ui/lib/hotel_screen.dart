import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://images.pexels.com/photos/974382/pexels-photo-974382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              const Positioned(
                  bottom: 20,
                  left: 30,
                  child: Column(
                    children: [
                      Text(
                        'Crowne Plaza',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Kochi, Kerala',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Chip(
                        label: Text(
                          '8.4/85 reviews',
                          style: TextStyle(color: Colors.white),
                        ),
                        labelPadding: EdgeInsets.all(5),
                        backgroundColor: Colors.grey,
                      )
                    ],
                  )),
              const Positioned(
                right: 30,
                bottom: 20,
                child: Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            height: 150,
            child: Column(
              children: [
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color(0xFFFF4080),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const Spacer(),
                    const Text(
                      '\$200',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFFF4080)),
                    onPressed: () {},
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                        child: Text(
                          'Book Now',
                          style: TextStyle(color: Colors.white),
                        )))
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Ramadan Plaza Palm Grove',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Celebrate business success at the Crowne Plaza Kochi with a touch of leisure and panoramic views of backwaters and exquisite cuisine combined with rejuvenation at our Aira Spa.Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 minutes away from Cochin International Airport.The hotel offers 269 spacious business rooms and suites with excellent views of the backwaters and the city. Our variety of authentic culinary outlets, extensive spa and leisure facilities, and high-tech meeting spaces that can accommodate large gatherings, all within a tranquil waterfront setting, makes Crowne Plaza Kochi the preferred international brand for business, leisure and events.',
            ),
          )
        ],
      ),
    );
  }
}
