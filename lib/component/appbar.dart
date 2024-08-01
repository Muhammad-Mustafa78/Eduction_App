import 'package:practice/constant.dart';
import 'package:practice/screen/onboarding_screen.dart';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen()));
            },
            icon: const Icon(
              Icons.logout,
              color: kSecondaryColor,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ))
      ],
    );
  }
}
