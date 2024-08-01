import 'package:flutter/material.dart';
import 'package:practice/app/Top.dart';
import 'package:practice/constant.dart';

class Sorting extends StatelessWidget {
  const Sorting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          decoration: BoxDecoration(
              color: kErrorBorderColor,
              borderRadius: BorderRadius.circular(15.0)),
          child: const Text(
            "Top",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Topcategarous()));
            },
            child: const Text(
              "Game",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: const Text(
            "Books",
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: SizedBox(height: 20, child: Image.asset("assets/sort.png")),
        )
      ],
    );
  }
}
