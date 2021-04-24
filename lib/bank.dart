import 'package:flutter/material.dart';
import 'package:krishi_vishwa/crop.dart';
import 'package:numberpicker/numberpicker.dart';

// ignore: must_be_immutable
class Bank extends StatefulWidget {
  int balance;
  int debt;
  Bank({this.balance, this.debt});
  @override
  _BankState createState() => _BankState(balance, debt);
}

class _BankState extends State<Bank> {
  int balance;
  int debt;
  String holder;
  int loan = 0;
  int repay = 0;
  _BankState(this.balance, this.debt);
  changeType() {
    setState(() {
      //Converting Int value to String.
      holder = balance.toString();
      holder = debt.toString();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[400],
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('Bank:', style: TextStyle(fontSize: 25, color: Colors.black)),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'You can have maximum loan of \n (Acres of land you have) * 20,000.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [Text("Take Loan")],
                    ),
                    Row(
                      children: <Widget>[
                        NumberPicker(
                          value: loan,
                          minValue: 0,
                          maxValue: 40000,
                          step: 5000,
                          onChanged: (value) => setState(() {
                            loan = value;
                          }),
                        ),
                        //balance = balance + _currentValue,
                        Text('Current value: $loan'),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [Text("Repay Loan")],
                    ),
                    Row(
                      children: <Widget>[
                        NumberPicker(
                          value: repay,
                          minValue: 0,
                          maxValue: 40000,
                          step: 5000,
                          onChanged: (value) => setState(() {
                            repay = value;
                          }),
                        ),
                        //balance = balance + _currentValue,
                        Text('Current value: $repay'),
                      ],
                    )
                  ],
                )
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
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Bank()));
                          },
                          child: Text("Borrow Loan from Bank",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              )))
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 40, 5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              balance = balance + loan;
                              debt = debt + loan;
                              balance = balance - repay;
                              debt = debt - repay;
                            });
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CropSelection(
                                        balance: balance,
                                        debt: debt,
                                      )),
                            );
                            //Navigator.of(context).pop({balance, debt});
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Done',
                              style: new TextStyle(
                                fontSize: 30.0,
                                color: Colors.yellow,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BoxedReturns {
  final int balace;
  final int debt;

  BoxedReturns(this.balace, this.debt);
}
