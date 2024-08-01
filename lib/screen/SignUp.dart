import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:practice/screen/onboarding_screen.dart';
import 'package:practice/screen/reutable_widget.dart/reutable.dart';
import 'package:practice/utilies/appbar_utilies.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController UserName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              hexStringToColor("CB2B93"),
              hexStringToColor("9546C4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.2, 20, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    reutableTextFeild(
                        "Enter UserName", Icons.person_outline, false, UserName,
                        onChanged: null),
                    const SizedBox(
                      height: 20,
                    ),
                    reutableTextFeild(
                        "Enter Email ID", Icons.person_outline, true, email,
                        onChanged: null),
                    const SizedBox(
                      height: 20,
                    ),
                    reutableTextFeild(
                      "Enter Passward",
                      Icons.lock_outline,
                      true,
                      password,
                      onChanged: null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ContainersigninSignUpButton(context, false, () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoardingScreen()));
                    })
                  ],
                ),
              ),
            )));
  }
}
