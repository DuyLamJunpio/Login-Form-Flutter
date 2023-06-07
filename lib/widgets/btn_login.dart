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
        child: TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text("Thông báo"),
                    content: const Text("Đăng nhập thành công"),
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
            child: const Text("LOGIN",
            style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold),))
      );
  }
}

