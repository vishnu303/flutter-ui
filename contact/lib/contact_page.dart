import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});
  final List contacts = [
    {
      'name': 'vishnu',
      'phoneNo': 8392892382,
      'avatar':
          'https://images.pexels.com/photos/9950569/pexels-photo-9950569.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Rahul',
      'phoneNo': 9738473222,
      'avatar':
          'https://images.pexels.com/photos/10057618/pexels-photo-10057618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Amal',
      'phoneNo': 7382932382,
      'avatar':
          'https://images.pexels.com/photos/1699159/pexels-photo-1699159.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    },
    {
      'name': 'Arjun',
      'phoneNo': 9973473438,
      'avatar':
          'https://images.pexels.com/photos/5155733/pexels-photo-5155733.jpeg?auto=compress&cs=tinysrgb&w=600',
    },
    {
      'name': 'Rohit',
      'phoneNo': 839289238,
      'avatar':
          'https://images.pexels.com/photos/9988949/pexels-photo-9988949.jpeg?auto=compress&cs=tinysrgb&w=600',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: ListTile(
                  title: Text(contacts[index]['name']),
                  subtitle: Text(contacts[index]['phoneNo'].toString()),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(contacts[index]['avatar'])),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.message),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.navigate_next)
                    ],
                  ),
                ),
              );
            }));
  }
}
