import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  final List chats = [
    {
      'name': 'vishnu',
      'lastMsg': 'Broo..',
      'avatar':
          'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'time': '2:30'
    },
    {
      'name': 'Rahul',
      'lastMsg': 'Hiii',
      'avatar':
          'https://images.pexels.com/photos/10057618/pexels-photo-10057618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'time': '2:42'
    },
    {
      'name': 'Amal',
      'lastMsg': 'Where are you?',
      'avatar':
          'https://images.pexels.com/photos/1699159/pexels-photo-1699159.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      'time': '3:00'
    },
    {
      'name': 'Arjun',
      'lastMsg': 'Okay',
      'avatar':
          'https://images.pexels.com/photos/5155733/pexels-photo-5155733.jpeg?auto=compress&cs=tinysrgb&w=600',
      'time': '3:50'
    },
    {
      'name': 'Rohit',
      'lastMsg': 'How is it',
      'avatar':
          'https://images.pexels.com/photos/9988949/pexels-photo-9988949.jpeg?auto=compress&cs=tinysrgb&w=600',
      'time': '4:00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
          backgroundColor: const Color(0xff075E54),
          actions: const [
            Icon(Icons.camera_alt),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
          ],
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(chats[index]['name']),
                  subtitle: Wrap(children: [
                    const ImageIcon(
                      AssetImage("assets/icons/tick.png"),
                      size: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(chats[index]['lastMsg']),
                  ]),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(chats[index]['avatar'])),
                  trailing: Text(chats[index]['time']),
                ),
              );
            }));
  }
}
