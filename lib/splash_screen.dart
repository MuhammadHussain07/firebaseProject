// ignore_for_file: camel_case_types

import 'package:firebase_proj/login_screen.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({super.key});

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  void time() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    time();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login_screen()));
          },
          child: const Text(
            'Firebase Tutorials',
          )),
    ));
  }
}
