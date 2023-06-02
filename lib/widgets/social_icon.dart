import 'package:flutter/material.dart';

class socialIcon extends StatelessWidget {
  const socialIcon({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          shape: BoxShape.circle,
        ),
        child: Expanded(
          // child: Image.asset("assets/icons/twitter.png"),
          child: Image(
            image: AssetImage(name),
            width: 50,
            height: 50,
          ),
        ));
  }
}
