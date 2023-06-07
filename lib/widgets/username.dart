import 'package:flutter/material.dart';

Widget build_username() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "Username",
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
        decoration: InputDecoration(
            hintText: 'Type your username',
            hintStyle: TextStyle(
                color: Color.fromARGB(255, 193, 193, 193), fontSize: 14),
            prefixIcon: Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 20,
            )),
      ),
    ],
  );
}
