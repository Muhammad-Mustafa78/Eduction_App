import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice/component/appbar.dart';
import 'package:practice/component/components.dart';
import 'package:practice/component/sorting.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SingleChildScrollView(),
                const SizedBox(
                  height: 26,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: const [
                              Text(
                                "Hi Julia",
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Today is a good day\nto leran something new!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black54,
                                    wordSpacing: 2.5,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.purpleAccent,
                                    borderRadius: BorderRadius.circular(15.0)),
                                child: Image.asset("assets/profile.png"),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Sorting(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Categouries",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              "See All",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CategoryList()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const GNav(
          backgroundColor: Colors.transparent,
          color: Colors.black,
          activeColor: Colors.black,
          tabBackgroundColor: Colors.white,
          gap: 0,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'home',
            ),
            GButton(
              icon: Icons.favorite_border,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              text: 'search',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Setting',
            ),
          ],
        ));
  }
}
