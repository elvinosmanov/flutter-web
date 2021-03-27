import 'package:can_can/routes/generateRoute.dart';
import 'package:can_can/pages/home.dart';
import 'package:can_can/pages/mc_lossh_register.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mechanical Completion',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: GenerateRoute.onGenerateRoute,
      // initialRoute: Home.id,
      home: MCLOSSHRegister(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFF5F5F5), body: Home());
  }
}
