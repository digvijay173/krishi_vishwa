import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:krishi_vishwa/bank.dart';
import 'package:krishi_vishwa/list.dart';
import 'package:krishi_vishwa/sell.dart';

// ignore: must_be_immutable
class Processes extends StatefulWidget {
  int balance;
  int debt;
  Processes({this.balance, this.debt});
  @override
  _ProcessesState createState() => _ProcessesState(balance, debt);
}

class _ProcessesState extends State<Processes> {
  int balance;
  int debt;
  String holder;
  _ProcessesState(this.balance, this.debt);
  changeType() {
    setState(() {
      //Converting Int value to String.
      holder = balance.toString();
      holder = debt.toString();
    });
  }

  List<bool> boollist = [false, false, false, false];
  List<Data> croplist = [
    Data("assets/traditional.jpg", "Traditional", 15000, 4.0),
    Data("assets/modern.jpg", "Modern", 20000, 26.5),
    Data("assets/mixedfarming.jpg", "Mixed", 18000, 3.0)
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Select Farming Method:',
                style: TextStyle(fontSize: 25, color: Colors.black)),
            Card(
              color: Colors.blue[100],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      'Balance: $balance',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Debt: $debt',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    '*Tap on card to view information:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: PageView.builder(
                    itemCount: croplist.length,
                    controller: PageController(
                      initialPage: 1,
                      viewportFraction: 0.3,
                    ),
                    itemBuilder: (BuildContext context, int index) =>
                        buildcropCard(context, index)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                          color: Colors.red[300],
                          elevation: 10.0,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bank(
                                          balance: balance,
                                          debt: debt,
                                        )));
                          },
                          child: Text("Bank",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              )))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Sell(
                                    balance: balance,
                                    debt: debt,
                                  )),
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
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildcropCard(BuildContext context, int index) {
    final crop = croplist[index];
    String hold = crop.value.toString();
    return new Container(
      child: Card(
        color: Colors.white,
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          speed: 500,
          front: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(crop.path, scale: crop.scale),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                crop.name + " - Rs." + hold,
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          back: Container(
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
                      child: Text(
                        'Information about Crop',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                        color:
                            boollist[index] ? Colors.green[300] : Colors.blue,
                        onPressed: () {
                          setState(() {
                            if (boollist[index] == true) {
                              boollist[index] = false;
                              balance = balance + crop.value;
                            } else {
                              boollist[index] = true;
                              balance = balance - crop.value;
                            }
                          });
                        },
                        child: Text("Buy for $hold",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
