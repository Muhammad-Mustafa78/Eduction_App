import 'package:flutter/material.dart';
import 'package:practice/screen/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:practice/screen/reutable_widget.dart/reutable.dart';
import 'package:practice/utilies/appbar_utilies.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // bool _loading = false;
  // final bool _isLogin = false;
  // final _formKey = GlobalKey<FormState>();
  // final _auth = FirebaseAuth.instance;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // handleSubmit() async {
  //   if (!_formKey.currentState!.validate()) return;
  //   final email = _emailTextController.text;
  //   final passward = _emailTextController.text;

  //   setState(() {
  //     _loading = true;
  //   });
  //   if (_isLogin) {
  //     await Auth().signInWithEmailAndPassward(email, passward);
  //   } else {
  //     await Auth().signUpWithEmailAndPassward(email, passward);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("CB2B93"),
            hexStringToColor("9546C4"),
            hexStringToColor("5E61F4")
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/MiniTots.png"),
                SizedBox(
                  height: 30,
                ),
                // TextFormField(
                //   controller: _emailTextController,
                //   validator: (value) {
                //     if (value == null) {
                //       return 'Please enter your email';
                //     }
                //     return null;
                //   },
                // ),
                reutableTextFeild(
                    "Enter email", Icons.person_outline, false, email,
                    onChanged: (value) {
                  email = value;
                }),
                SizedBox(
                  height: 20,
                ),
                // TextFormField(
                //   controller: _passwardTextController,
                //   validator: (value) {
                //     if (value == null) {
                //       return 'Please enter your Passward';
                //     }
                //     return null;
                //   },
                // ),
                reutableTextFeild(
                    "Enter Passward", Icons.lock_outline, true, password,
                    onChanged: (value) {
                  password = value;
                }),
                SizedBox(
                  height: 20,
                ),

                ContainersigninSignUpButton(context, true, () {}),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have any account?",
          style: TextStyle(
            color: Colors.white70,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ));
          },
          child: Text(
            " SignUp",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
