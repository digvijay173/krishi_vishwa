import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:krishi_vishwa/info1.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/farmbg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'Welcome to',
                              textStyle: const TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          repeatForever: true,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text(
                          'KRISHI-VISHWA',
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 93,
                            // color: const Color(0xff707070),
                            height: 1.2473118279569892,
                            shadows: [
                              Shadow(
                                color: Colors.orange[300],
                                offset: Offset(8, 8),
                                blurRadius: 4,
                              )
                            ],
                          ),
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: false),
                          textAlign: TextAlign.left,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ignore: deprecated_member_use
                  RaisedButton(
                    color: Colors.yellow,
                    elevation: 20.0,
                    onPressed: () {
                      // Respond to button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Info1()),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Start Game',
                          style: const TextStyle(
                            fontSize: 35.0,
                            color: Colors.black,
                          ),
                        )),
                  )
                ],
              )
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'About Us',
          style: TextStyle(color: Colors.black),
        ),
        icon: Icon(
          Icons.info_outline_rounded,
          color: Colors.black,
        ),
        backgroundColor: Colors.orange[200],
        onPressed: () {},
      ),
    );
  }
}
