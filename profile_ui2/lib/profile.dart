import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Image.network(
                'https://images.pexels.com/photos/2325446/pexels-photo-2325446.jpeg',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
              const Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'David Beckham',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Model / Football',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              top: 130,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    child: const Icon(Icons.message),
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://focus.sundayworld.com/thumbor/beHydLhe_10o0hnVmxmxg-dIk8E=/1280x960/smart/prod-mh-ireland/82d415be-de80-11ec-a399-0257d57b707f'),
                    radius: 70,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Icon(Icons.add),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
