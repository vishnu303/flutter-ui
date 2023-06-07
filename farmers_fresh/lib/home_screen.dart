import 'package:farmers_fresh/utils/assets.dart';
import 'package:farmers_fresh/widgets/blog_list.dart';
import 'package:farmers_fresh/widgets/category_tems_grid.dart';
import 'package:farmers_fresh/widgets/certification_details.dart';
import 'package:farmers_fresh/widgets/custom_appbar.dart';
import 'package:farmers_fresh/widgets/filters.dart';
import 'package:farmers_fresh/widgets/image_slider.dart';
import 'package:farmers_fresh/widgets/info_card.dart';
import 'package:farmers_fresh/widgets/items_grid.dart';
import 'package:farmers_fresh/widgets/review_corrousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppbar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const Filters(),
              ImageSlider(
                images: topCarouselItems,
              ),
              const InfoCard(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Shop By Category',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const CategoryItemGrid(),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                            BorderSide(width: 3, color: Color(0xffcde0d5)))),
                child: ImageSlider(images: bottomCarouselItems),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  'Best selling products',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ItemsGrid(items: items),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'VIEW MORE',
                  style: TextStyle(color: Color(0xff01b748)),
                ),
              ),
              const CertDetails(),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Our Blog Posts',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              const BlogList(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'VIEW MORE',
                  style: TextStyle(color: Color(0xff01b748)),
                ),
              ),
              const Divider(
                thickness: 8,
                color: Color(0xffcde0d5),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'What Our Customers Say',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
              ),
              ReviewCorousel(),
              const Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 15),
                child: Text(
                  'This Kochi-Based-farm-to-fork online marketplace is connecting farmers directly to customers',
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 1.5, fontSize: 13),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/9/9a/The_Economic_Times_logo.png',
                    width: 100,
                  ),
                  Image.network(
                    'https://files.startupranking.com/startup/thumb/8034_2064627540c3c27254a71b819c5011a6bb226729_yourstory_m.png',
                    width: 50,
                  ),
                  Image.network(
                    'https://marketing.readwhere.com/newindian-logo.png',
                    width: 60,
                  ),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/en/thumb/7/74/Manorama_News.svg/150px-Manorama_News.svg.png',
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 8,
                color: Color(0xffcde0d5),
              ),
              const ListTile(
                title: Text(
                  'Get To Know Us',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                ),
                subtitle: Wrap(
                  children: [
                    Text('About Us   |', style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('About Us   |', style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('About Us  ', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
              const ListTile(
                title: Text(
                  'Useful Links',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
                ),
                subtitle: Wrap(
                  children: [
                    Text('Privacy Policy   |', style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('Return & Refund Policy   |',
                        style: TextStyle(fontSize: 10)),
                    SizedBox(width: 10),
                    Text('Terms & Condition  ', style: TextStyle(fontSize: 10)),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color(0xff01b748),
                child: const Text(
                    'Copyright © 2023 Farmers Fresh Zone . All Rights Reserved. V 2.40.22',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10, color: Colors.white)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
