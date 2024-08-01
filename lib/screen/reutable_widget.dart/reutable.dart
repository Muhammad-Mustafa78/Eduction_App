import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 240,
    height: 240,
    color: Colors.white,
  );
}

TextField reutableTextFeild(String text, IconData icon, bool isPasswardType,
    TextEditingController controller,
    {required onChanged}) {
  return TextField(
      controller: controller,
      obscureText: isPasswardType,
      enableSuggestions: isPasswardType,
      autocorrect: isPasswardType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          labelText: text,
          labelStyle: const TextStyle(color: Colors.white),
          filled: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          fillColor: Colors.white.withOpacity(0.3),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(width: 0, style: BorderStyle.none))),
      keyboardType: isPasswardType
          ? TextInputType.visiblePassword
          : const TextInputType.numberWithOptions());
}

ContainersigninSignUpButton(
    BuildContext context, bool isLogin, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 50,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
    child: ElevatedButton(
      onPressed: () async {
        onTap();
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
      child: Text(isLogin ? 'LOG IN' : 'SIGN UP',
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 36)),
    ),
  );
}
