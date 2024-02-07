import 'package:flutter/material.dart';
import './pages/login.dart';
// import './pages/regis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login AbdurDEV',
      theme: ThemeData(),
      home: LoginPage(),
    );
  }
}
