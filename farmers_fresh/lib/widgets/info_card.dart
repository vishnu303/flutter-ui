import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffcde0d5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/30mins.png',
                  width: 40,
                ),
                const SizedBox(height: 20),
                const Text(
                  '30 MINS POLICY',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/traceability.png',
                  height: 40,
                ),
                const SizedBox(height: 20),
                const Text('TRACEABILITY', style: TextStyle(fontSize: 10)),
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/images/sourcing.png',
                  width: 40,
                ),
                const SizedBox(height: 20),
                const Text('LOCAL SOURCING', style: TextStyle(fontSize: 10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
