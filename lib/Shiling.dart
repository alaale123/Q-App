import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ussd/ussd.dart';
import 'Somtel.dart';

void main() => runApp(Shiling());

class Shiling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Gali lacagta';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Color(0xFFEAF4F4),
        appBar: AppBar(
          centerTitle: true,
          title: Text(appTitle),
          // leading: IconButton(
          //     icon: Icon(Icons.arrow_back_ios),
          //     onPressed: () {
          //       // Navigate back to the first screen by popping the current route
          //       // off the stack.
          //       Navigator.pop(context);
          //     }),
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

  var Gali = '#';
  int amount = 50;
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
                suffixText: ' S/Land to Dollar',
                prefixIcon: Icon(Icons.attach_money),
                suffixStyle: TextStyle(
                  fontFamily: 'Black ops',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            keyboardType: TextInputType.number,
            onChanged: (text) {
              textinputted = text;
              print("First text field: ");
            },
            validator: (value) {
              if (value.isEmpty) {
                return 'fadlan gali lacagta';
              } else
                return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                onPressed: () => {
                  if (_formKey.currentState.validate())
                    {
                      launchUssd('*277*330313*$textinputted $Gali'),
                      Scaffold.of(context)
                          .showSnackBar(SnackBar(content: Text('sarif..'))),
                        
                    },
                },
                color: Color(0xFF68D8D6),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  // Replace with a Row for horizontal icon + text
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Colors.pink,
                      size: 25.0,
                    ),
                    Text(
                      "Sarifo Shilling",
                      style: TextStyle(fontSize: 20),
                    )
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
