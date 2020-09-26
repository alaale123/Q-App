import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussd/ussd.dart';

void main() => runApp(Abpage());

class Abpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Gali lacagta';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color(0xFFEAF4F4),
        appBar: AppBar(
          // automaticallyImplyLeading: true,
          // leading: IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () {
          //       // Navigate back to the first screen by popping the current route
          //       // off the stack.
          //       Navigator.pop(context);
          //     }),
          centerTitle: true,
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  void validate() {
    if (_formKey.currentState.validate()) {
      print('validate');
    } else {
      print('not validate');
    }
  }

  var gAli = '#';

  String textinputted;

  Future<void> launchUssd(String ussdCode) async {
    Ussd.runUssd(ussdCode);
  }

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
                fillColor: Colors.yellow,
                suffixIcon: Icon(Icons.ac_unit),
                suffixText: 'Dollar to S/Land',
                prefixIcon: Icon(Icons.attach_money),
                suffixStyle: TextStyle(
                  fontFamily: 'Black ops',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            keyboardType: TextInputType.number,
            onChanged: (text) {
              textinputted = text;
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'fadlan gali lacagta';
              } else
                return null;
            },
          ),
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () => {
                  if (_formKey.currentState.validate())
                    {
                      launchUssd('*377*330313*$textinputted $gAli'),
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('sarif..'))),
                    },
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
