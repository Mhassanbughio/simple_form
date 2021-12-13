import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Form",
    home: SimpleForm(),
  ));
}

class SimpleForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleFormState();
  }
}

class _SimpleFormState extends State<SimpleForm> {
  @override
  String name = " ";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Form"),
      ),
      body: Container(
          margin: EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              TextField(onSubmitted: (String userName) {
                setState(() {
                  name = userName;
                });
              }),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Name is $name",
                    style: TextStyle(fontSize: 30.0),
                  )),
            ],
          )),
    );
  }
}
