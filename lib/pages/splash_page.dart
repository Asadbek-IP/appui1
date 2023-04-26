import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isLogin = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 5), () {
      toPage(isLogin);
    });
  }

  toPage(bool login) {
    if (isLogin) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    } else {
      //  Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => SignUp()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Image(
                width: 130,
                height: 130,
                image: AssetImage("assets/images/insta.png"),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                ),
                Text(
                  "From Meta",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
