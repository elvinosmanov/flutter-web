import 'package:can_can/widgets/custom_admin_scaffold.dart';
import 'package:flutter/material.dart';

class PackageLOSSHRegister extends StatelessWidget {
  static const String id = 'package-lossh-register';
  @override
  Widget build(BuildContext context) {
    return CustomAdminScaffold(
      title: 'ACE Project | Package LOSSH Register',
      route: PackageLOSSHRegister.id,
      child: Center(child: Image.asset('images/azfen_logo.png')),
    );
  }
}
