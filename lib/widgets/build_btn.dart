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
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondRoute()))
        },
        child: const Text(
          "LOGIN",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
