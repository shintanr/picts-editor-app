import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image(
              image: AssetImage('assets/images/aboutme'),
            ),
          )
        ],
      ),
    );
  }
}
