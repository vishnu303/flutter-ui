import 'package:flutter/material.dart';

class CustomerReviews extends StatelessWidget {
  final String name;
  final String designation;
  final String image;
  final String reviewText;

  const CustomerReviews(
      {super.key,
      required this.name,
      required this.designation,
      required this.image,
      required this.reviewText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffcde0d5)),
        ),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: AssetImage(image),
                radius: 25,
              ),
              title: Text(
                name,
                style: TextStyle(
                    color: Color(0xff01b208), fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                designation,
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(
                Icons.format_quote_outlined,
                color: Color(0xffcde0d5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  reviewText,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      height: 1.5,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
