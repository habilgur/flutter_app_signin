import 'package:flutter/material.dart';
import 'package:flutter_app_signin/home_page.dart';

class SingUpPage extends StatefulWidget {
  static final pageId = "signup";
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  var key = GlobalKey<FormState>();
  String name, email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Form(
              key: key,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.people),
                    title: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Your Name",
                      ),
                      validator: (input) {
                        return input.length == 0 ? "Enter Your Name" : null;
                      },
                      onSaved: (input) {
                        name = input;
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Your Email",
                      ),
                      validator: (input) {
                        return !input.contains("@")
                            ? "Enter a valid mail"
                            : null;
                      },
                      onSaved: (input) {
                        email = input;
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(hintText: "Your Password"),
                      validator: (input) {
                        return input.length < 8
                            ? "Password Atleast 8 char"
                            : null;
                      },
                      onSaved: (input) {
                        password = input;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonTheme(
                    height: 50,
                    minWidth: 300,
                    child: RaisedButton(
                      child: Text("Save"),
                      onPressed: _checkInput,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _checkInput() {
    if (key.currentState.validate()) {
      key.currentState.save();
      //Navigator.pushNamed(context, HomePage.pageId);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                    name: name,
                    email: email,
                    password: password,
                  )));
    }
  }
}
