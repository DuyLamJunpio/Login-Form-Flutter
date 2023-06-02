import 'package:flutter/material.dart';

class build_btn extends StatelessWidget {
  const build_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [Color(0xff29B6F6), Color(0xffE040FB)]),
          borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0),
        onPressed: () => {},
        child: const Text(
          "LOGIN",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
