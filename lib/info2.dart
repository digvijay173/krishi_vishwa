import 'package:flutter/material.dart';
import 'package:krishi_vishwa/credit.dart';

class Info2 extends StatefulWidget {
  @override
  _Info2State createState() => _Info2State();
}

class _Info2State extends State<Info2> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Hero(tag: "step1", child: Text('Crop Selection.')),
                      Hero(tag: "step2", child: Text('Land Preparation.')),
                      Hero(tag: "step3", child: Text('Seed Selection.')),
                      Hero(tag: "step1", child: Text('Seed Sowing.')),
                      Hero(tag: "step5", child: Text('Irrigation.')),
                      Hero(tag: "step6", child: Text('Crop Growth.')),
                      Hero(tag: "step7", child: Text('Fertilizing.')),
                      Hero(tag: "step8", child: Text('Harvesting.')),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 40, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Respond to button press
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Credit()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Next',
                        style: new TextStyle(
                          fontSize: 30.0,
                          color: Colors.yellow,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
