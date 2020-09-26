import 'package:flutter/material.dart';
import 'package:myfirst_flutterapp/main.dart';

void main() => runApp(QorApp());

class telesom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Qanciye shob'),
        ),
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            Container(
              height: 100,
              margin: new EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[],
              ),
            ),
            Container(
              height: 100,
              margin: new EdgeInsets.only(top: 40.0),
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/tt.png'),
                  ),
                  Expanded(
                    child: Image.asset('images/ss.png'),
                  ),
                  Expanded(
                    child: Image.asset('images/rr.png'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
