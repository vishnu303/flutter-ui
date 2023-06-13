import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Center(
            child: Image.asset(
              'assets/maldives.png',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text('- Or -'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Login with facebook')),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text('Login with twitter')),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {},
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Text('Login with google')),
          ),
        ]));
  }
}
