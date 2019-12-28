import 'package:flutter/material.dart';
import 'package:flutter_app_signin/sign_up_page.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.pageId: (context) => HomePage(),
      },
      home: SingUpPage(),
    );
  }
}
