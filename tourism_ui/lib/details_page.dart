import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final int id;
  final String description;
  final String imgUrl;
  const DetailsPage(
      {super.key,
      required this.title,
      required this.id,
      required this.description,
      required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  )
                ],
              ),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    onRatingUpdate: (rating) {
                      debugPrint(rating.toString());
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'About Place',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(description),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Special Facilites',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Chip(
                    backgroundColor: Colors.white,
                    label: Text('Parking'),
                    avatar: Icon(Icons.car_rental),
                  ),
                  Chip(
                    backgroundColor: Colors.white,
                    label: Text('24x7 support'),
                    avatar: Icon(Icons.support_agent),
                  ),
                  Chip(
                    backgroundColor: Colors.white,
                    label: Text('Wifi'),
                    avatar: Icon(Icons.wifi),
                  )
                ],
              ),
              Image.network(imgUrl,
                  fit: BoxFit.cover, height: 200, width: double.infinity),
              const Spacer(),
              Center(
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                      child: Text(
                        'Explore Now',
                        style: TextStyle(fontSize: 18),
                      ),
                    )),
              )
            ]),
      ),
    );
  }
}
