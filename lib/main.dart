import 'package:flutter/material.dart';
import 'package:swift/coffeeDetailScreen.dart';
import 'package:swift/loginPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}
