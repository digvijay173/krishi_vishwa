import 'dart:io';

import 'package:flutter/material.dart';
import 'package:krishi_vishwa/bank.dart';

// ignore: must_be_immutable
class End extends StatefulWidget {
  int balance;
  int debt;
  End({this.balance, this.debt});
  @override
  _EndState createState() => _EndState(balance, debt);
}

class _EndState extends State<End> {
  int balance;
  int debt;
  int value;
  String holder;
  _EndState(this.balance, this.debt);

  changeType() {
    setState(() {
      //Converting Int value to String.
      holder = balance.toString();
      holder = debt.toString();
    });
  }

  Widget build(BuildContext context) {
    value = balance - 50000;
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[],
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Text('CONGRATULATIONS,',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.red,
                              fontWeight: FontWeight.bold)),
                      Text('You just completed whole farming process.',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Text('Profit Earned: $value ',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text('($balance-50000)',
                          style: TextStyle(fontSize: 25, color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('Debt to Pay: $debt',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ],
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
                      onPressed: () => exit(0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Exit',
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
}
