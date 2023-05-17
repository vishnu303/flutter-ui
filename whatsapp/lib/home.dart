import 'package:flutter/material.dart';
import 'package:whatsapp/broadcast_screen.dart';
import 'package:whatsapp/call_screen.dart';
import 'package:whatsapp/chat_screen.dart';
import 'package:whatsapp/status_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Whatsapp"),
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
              bottom: const TabBar(tabs: [
                Tab(icon: Icon(Icons.group)),
                Tab(
                  text: 'Chats',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Calls',
                )
              ]),
            ),
            body: TabBarView(
              children: [
                BroadcastScreen(),
                ChatScreen(),
                StatusScreen(),
                CallScreen()
              ],
            )));
  }
}
