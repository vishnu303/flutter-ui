import 'package:flutter/material.dart';

import '../utils/assets.dart';

class BlogList extends StatelessWidget {
  const BlogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: blogContent.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffcde0d5)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(blogContent[index]['image']))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    blogContent[index]['title'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 8),
                    title: Text(blogContent[index]['time']),
                    trailing: const Icon(
                      Icons.arrow_forward,
                      color: Color(0xff01b748),
                    ),
                    dense: true,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
