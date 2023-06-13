import 'package:flutter/material.dart';
import 'package:tourism_ui/details_page.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final List places = [
    {
      'imageUrl':
          'https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'title': 'Furious Place',
      'id': 222,
      'description':
          'Enchanting Grove is a captivating natural haven nestled amidst a picturesque landscape, where nature reigns supreme and tranquility abounds. This idyllic sanctuary offers a respite from the hustle and bustle of everyday life, inviting visitors to immerse themselves in the beauty and serenity of a lush, green forest.',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'title': 'Luxury Place',
      'id': 333,
      'description':
          'The air is crisp and refreshing, carrying with it the gentle fragrance of blossoming flowers and the earthy scent of moss-covered tree trunks. Tall, majestic trees tower above, their emerald canopies reaching towards the heavens, creating a natural canopy that filters sunlight, casting dappled',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'title': 'Favirote Place',
      'id': 444,
      'description':
          'Nestled in the heart of untouched wilderness, this natural paradise is a haven of tranquility and beauty. As you step into this lush oasis, you are instantly greeted by a breathtaking landscape adorned with a myriad of vibrant green trees.',
    },
    {
      'imageUrl':
          'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'title': 'Nature look',
      'id': 555,
      'description':
          'The air is crisp and refreshing, carrying with it the gentle fragrance of blossoming flowers and the earthy scent of moss-covered tree trunks. Tall, majestic trees tower above, their emerald canopies reaching towards the heavens, creating a natural canopy that filters sunlight, casting dappled',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: RichText(
              text: const TextSpan(
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  children: [
                TextSpan(text: 'Go', style: TextStyle(color: Colors.blue)),
                TextSpan(text: 'Fast', style: TextStyle(color: Colors.black)),
              ])),
          centerTitle: true,
          actions: const [
            CircleAvatar(
              backgroundColor: Colors.blue,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                decoration: InputDecoration(hintText: 'Search'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Popular Place',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .75,
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: places.map((e) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailsPage(
                              id: e['id'],
                              title: e['title'],
                              description: e['description'],
                              imgUrl: e['imageUrl'],
                            )));
                  },
                  child: GridTile(
                    child: Image.network(
                      e['imageUrl'],
                      fit: BoxFit.cover,
                    ),
                    footer: GridTileBar(
                      title: Text(
                        e['title'],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
      ),
    );
  }
}
