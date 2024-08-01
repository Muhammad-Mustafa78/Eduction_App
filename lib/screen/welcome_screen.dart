import 'package:flutter/material.dart';
import 'package:practice/constant.dart';

import 'home_screen.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50))),
                child: Column(children: [
                  Image.asset(
                    "assets/welcome.png",
                    height: 350,
                  ),
                ]),
              )),
          Expanded(
              flex: 2,
              child: Container(
                color: kSecondaryColor,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Spacer(),
                        const Text(
                          "Lerning is Everything",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Text(
                          'learning with\nus where are you?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            MaterialButton(
                              height: 60,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              color: kErrorBorderColor,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const Homescreen())));
                              },
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
