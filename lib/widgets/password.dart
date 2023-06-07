import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget build_password() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "Password",
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Type your password',
            hintStyle: TextStyle(
                color: Color.fromARGB(255, 193, 193, 193), fontSize: 14),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.grey,
              size: 20,
            )),
      ),
    ],
  );
}
