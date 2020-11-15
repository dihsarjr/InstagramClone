import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[
      Color(0xffDA44bb),
      Color(0xffF58529),
      Color(0xffDD2A7B),
      Color(0xff8134AF)
    ],
  ).createShader(Rect.fromLTWH(100.0, 20.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.black.withOpacity(0.94),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Image.asset(
                    "images/instaLogo.png",
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.12,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(color: Colors.white54, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "FACEBOOK",
                      style: TextStyle(
                          letterSpacing: 2,
                          foreground: Paint()..shader = linearGradient,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
