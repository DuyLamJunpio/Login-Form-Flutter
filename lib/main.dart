import 'package:flutter/material.dart';

import 'widgets/build_btn.dart';
import 'widgets/build_password.dart';
import 'widgets/build_username.dart';
import 'widgets/social_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 80),
      child: Center(
        child: Column(children: [
          const Text(
            'Login',
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          const SizedBox(height: 50),
          build_username(),
          const SizedBox(height: 50),
          build_password(),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            Text(
              "Fogot password?",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  decoration: TextDecoration.underline),
            ),
          ]),
          const SizedBox(
            height: 50,
          ),
          const build_btn(),
          const SizedBox(height: 50),
          const Text(
            "Or Sign Up Using",
            style: TextStyle(
                color: Color.fromARGB(155, 23, 23, 23),
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              socialIcon(
                name: 'assets/facebook.png',
              ),
              socialIcon(
                name: 'assets/twitter.png',
              ),
              socialIcon(
                name: 'assets/google.png',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              or_divider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "OR",
                  style: TextStyle(
                      color: Color.fromARGB(155, 23, 23, 23),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              or_divider(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                          title: const Text("Sign in"),
                          content: const Text("This is AlertDialog Sign in"),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(ctx).pop();
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                child: const Text("OK"),
                              ),
                            ),
                          ],
                        ));
              },
              child: const Text("SIGN IN"))
        ]),
      ),
    ));
  }

  Expanded or_divider() {
    return const Expanded(
      child: Divider(
        color: Color.fromARGB(255, 0, 0, 0),
        height: 1.5,
      ),
    );
  }
}
