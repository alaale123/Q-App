import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirst_flutterapp/eSh.dart';
import 'package:myfirst_flutterapp/eUS.dart';

void main() => runApp(Somtel());

class Somtel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('eDahab Service'),
        ),
        backgroundColor: Color(0xFF29335C),
        body: Column(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/ss.png'),
                  ),
                  Expanded(
                    child: Image.asset('images/tt.png'),
                  ),
                ],
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 200,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {},
                    color: Color(0xffEF2D56),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.credit_card),
                        Text(
                          "eDahab",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {Navigator.pop(context)},
                    color: Color(0xffEF2D56),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text(
                          "Ku noqo Zaad'ka",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Container(
              child: Text(
                'eDahab Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Black Ops',
                    fontSize: 20.0,
                    letterSpacing: 5.5,
                    decoration: TextDecoration.none),
              ),
              height: 25.0,
              width: 480.0,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                    0.1,
                    0.3,
                    0.7,
                    1
                  ],
                      colors: [
                    Colors.red,
                    Colors.white24,
                    Colors.green,
                    Colors.green,
                  ])),
            ),
            Container(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/usd.png'),
                      ),
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('images/ssh.png'),
                      ),
                    ),
                  ],
                )),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 200,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eUS()),
                      )
                    },
                    color: Color(0xffEF2D56),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(
                          "Sarifo Dollar",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => eSh()),
                      )
                    },
                    color: Color(0xffEF2D56),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.place),
                        Text(
                          "Sarifo Shilling",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
