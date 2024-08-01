import 'package:flutter/material.dart';
import 'package:practice/app/Top.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen({super.key, required this.score});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color(0xFF252c4a);
    Color secondColor = const Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulation",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            const Text(
              "Your score is:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              "${widget.score}",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 60.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Topcategarous()),
                );
              },
              color: Colors.orange,
              textColor: Colors.white,
              child: const Text("Repeat a Quize"),
            )
          ],
        ),
      ),
    );
  }
}
