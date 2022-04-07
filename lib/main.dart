import 'package:flutter/material.dart';
import 'package:shopping_ui/pages/root_app.dart';
import 'package:shopping_ui/widgets/forgot.dart';
import 'package:shopping_ui/widgets/login.dart';
import 'package:shopping_ui/widgets/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'forgot': (context) => MyForgot(),
      'root_app': (context) => RootApp(),
    },
  ));
}
