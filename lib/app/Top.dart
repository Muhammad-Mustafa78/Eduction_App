// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice/app/result_screen.dart';
import 'package:practice/component/question_list.dart';

class Topcategarous extends StatefulWidget {
  const Topcategarous({super.key});

  @override
  State<Topcategarous> createState() => _TopcategarousState();
}

class _TopcategarousState extends State<Topcategarous> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xFF252c4a);
    Color secondColor = const Color(0xFF117eeb);
    PageController? _controller = PageController(initialPage: 0);
    bool isPressed = false;
    Color isTrue = Colors.green;
    Color isWrong = Colors.red;
    int score = 0;
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              "Quize App",
              selectionColor: Colors.white,
            ),
            backgroundColor: Colors.black),
        backgroundColor: mainColor,
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: PageView.builder(
                controller: _controller!,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (Page) {
                  setState(() {
                    isPressed = false;
                  });
                },
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          "Question ${index + 1} /  10",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 28.0),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 8.0,
                        thickness: 1.0,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        questions[index].question!,
                        style: const TextStyle(
                            color: Colors.white, fontSize: 28.0),
                      ),
                      const SizedBox(
                        height: 35.0,
                      ),
                      for (int i = 0; i < questions[index].answer!.length; i++)
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 18.0),
                          child: MaterialButton(
                            shape: const StadiumBorder(),
                            color: isPressed
                                ? questions[index]
                                        .answer!
                                        .entries
                                        .toList()[i]
                                        .value
                                    ? isTrue
                                    : isWrong
                                : secondColor,
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            onPressed: isPressed
                                ? () {}
                                : () {
                                    setState(() {
                                      isPressed = true;
                                    });
                                    if (questions[index]
                                        .answer!
                                        .entries
                                        .toList()[i]
                                        .value) {
                                      score += 10;
                                      if (kDebugMode) {
                                        print(score);
                                      }
                                    }
                                  },
                            child: Text(
                              questions[index].answer!.keys.toList()[i],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                              onPressed: isPressed
                                  ? index + 1 == questions.length
                                      ? () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ResultScreen(
                                                  score: score,
                                                ),
                                              ));
                                        }
                                      : () {
                                          _controller!.nextPage(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.linear);
                                          setState(() {
                                            isPressed = true;
                                          });
                                        }
                                  : null,
                              style: const ButtonStyle(),
                              child: Text(
                                index + 1 == questions.length
                                    ? "See Result"
                                    : "Next Question",
                                style: const TextStyle(color: Colors.white),
                              )),
                        ],
                      )
                    ],
                  );
                })));
  }
}
