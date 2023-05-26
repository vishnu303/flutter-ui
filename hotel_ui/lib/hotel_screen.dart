import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.network(
                'https://images.pexels.com/photos/974382/pexels-photo-974382.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              Positioned(
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
              Positioned(
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
            padding: EdgeInsets.all(20),
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
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Color(0xFFFF4080),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const Spacer(),
                    Text(
                      '\$200',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                TextButton(onPressed: () {}, child: Text('hhsdjd'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
