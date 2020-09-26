import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirst_flutterapp/Shiling.dart';

import 'Somtel.dart';
import 'Abpage.dart';
import 'telesom.dart';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF380036),
        scaffoldBackgroundColor: Color(0xFF150811),
        accentColor: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Qoortaag Money Exchange",
            style: TextStyle(fontFamily: 'Black Ops'),
          ),
          leading: GestureDetector(
            onTap: () {/* Write listener code here */},
            child: Icon(
              Icons.monetization_on, // add custom icons also
            ),
          ),
        ),
        body: QorApp(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.phone),
        ),
      ),
    ),
  );
}

class QorApp extends StatefulWidget {
  @override
  _QorAppState createState() => _QorAppState();
}

class _QorAppState extends State<QorApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            color: Color(0xFF150811),
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 100,
                  child: Image.asset('images/tt.png'),
                ),
                SizedBox(
                  width: 100,
                  child: Image.asset('images/ss.png'),
                ),
                SizedBox(
                  width: 100,
                  child: Image.asset('images/rr.png'),
                ),
              ],
            )),
        Container(
            color: Color(0xFF150811),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {},
                    color: Color(0xFF68D8D6),
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        Text(
                          "Zaad",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Somtel()),
                      )
                    },
                    color: Color(0xFF68D8D6),
                    padding: EdgeInsets.all(5.0),
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
                Expanded(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => telesom()),
                      )
                    },
                    color: Color(0xFF68D8D6),
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.pets),
                        Text(
                          "About",
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
            'Zaad Service',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Black Ops',
              fontSize: 20.0,
              letterSpacing: 5.5,
            ),
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
                Colors.green,
                Colors.blue,
                Colors.white,
                Colors.pink
              ])),
        ),
        Container(
            color: Color(0xFF150811),
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
            color: Color(0xFF150811),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Abpage()),
                      )
                    },
                    color: Color(0xFF68D8D6),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.attach_money),
                        Text(
                          "Sarifo Dollar",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Shiling()),
                      )
                    },
                    color: Color(0xFF68D8D6),
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(Icons.place),
                        Text(
                          "Sarifo Shilling",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Center(
          child: Container(
            child: Text(
              'Qoortaag Money Exchange',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, fontFamily: 'Black Ops'),
            ),
            height: 70.0,
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
                  Colors.green,
                  Colors.blue,
                  Colors.orange,
                  Colors.pink
                ])),
          ),
        ),
      ],
    );
  }
}
