// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  final String city;
  final String population;
  final String country;
  final String imageUrl;

  const ListCard({
    Key? key,
    required this.city,
    required this.population,
    required this.country,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Color.fromRGBO(201, 255, 64, 1),
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Row(children: [
          Image.network(
            imageUrl,
            width: 150,
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                city,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                country,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '$population mil',
                style: TextStyle(fontSize: 13),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
