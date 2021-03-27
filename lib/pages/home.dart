import 'package:can_can/widgets/custom_admin_scaffold.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const String id = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return CustomAdminScaffold(
      route: Home.id,
      child: Center(child: Text("Hello, Home Page ")),
    );
  }
}
