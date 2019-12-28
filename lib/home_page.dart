import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final pageId = "home";
  final String name, email, password;

  HomePage({this.name, this.email, this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: ListBody(
                children: <Widget>[
                  Text("$name"),
                  Text("$email"),
                  Text("$password"),
                ],
              ),
            )
          ]),
    );
  }
}
