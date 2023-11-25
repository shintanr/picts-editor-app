import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:photo_editor/module/get_started/presentation/get_started_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset(
                'assets/splash.jpg',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              'Picts Editor App',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w400,
                fontSize: 20,
                letterSpacing: 8,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            SpinKitCircle(
              size: 20,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
