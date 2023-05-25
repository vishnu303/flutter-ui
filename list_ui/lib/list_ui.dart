import 'package:flutter/material.dart';
import 'package:list_ui/list_card.dart';

class ListUi extends StatelessWidget {
  ListUi({super.key});
  final List cityDetails = [
    {
      'city': 'Finland',
      'country': 'Europe',
      'image':
          'https://images.pexels.com/photos/2004391/pexels-photo-2004391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'population': '5.54',
    },
    {
      'city': 'Delhi',
      'country': 'India',
      'image':
          'https://images.pexels.com/photos/1542620/pexels-photo-1542620.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'population': '32.9',
    },
    {
      'city': 'London',
      'country': 'UK',
      'image':
          'https://images.pexels.com/photos/460672/pexels-photo-460672.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'population': '8.8',
    },
    {
      'city': 'New York',
      'country': 'USA',
      'image':
          'https://images.pexels.com/photos/2190283/pexels-photo-2190283.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'population': '10',
    },
    {
      'city': 'Vancouver',
      'country': 'canada',
      'image':
          'https://images.pexels.com/photos/63332/science-world-false-creek-vancouver-british-columbia-63332.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'population': '2.6',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities around the world'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListCard(
            city: cityDetails[index]['city'],
            country: cityDetails[index]['country'],
            population: cityDetails[index]['population'],
            imageUrl: cityDetails[index]['image'],
          );
        },
        itemCount: 4,
      ),
    );
  }
}
