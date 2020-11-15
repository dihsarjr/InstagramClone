import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.black.withOpacity(0.94),
            child: Center(
              child: Image.asset(
                "images/instaLogo.png",
                height: 80,
                width: 80,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
