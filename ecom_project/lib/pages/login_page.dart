//import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/launcher';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Admin Login'),
      ),
    );
  }
}
