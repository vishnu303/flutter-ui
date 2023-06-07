import 'package:flutter/material.dart';

class CertDetails extends StatelessWidget {
  const CertDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3),
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 8, color: Color(0xffcde0d5)))),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 180,
        color: const Color(0xffcde0d5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.height * .23,
                  child: Text(
                    'We are working towards safe food - which are Nutri - Locked and hygienic as well',
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Text(
                      'READ MORE',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    CircleAvatar(
                        backgroundColor: Color(0xff01b748),
                        radius: 8,
                        child: Icon(
                          Icons.arrow_right,
                          size: 16,
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            ),
            Image.asset(
              'assets/images/certified.png',
              scale: 2,
            ),
          ],
        ),
      ),
    );
  }
}
