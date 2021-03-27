import 'package:can_can/widgets/custom_admin_scaffold.dart';
import 'package:flutter/material.dart';

class PackageAsBuiltRegister extends StatelessWidget {
  static const String id = 'package-as-built';

  @override
  Widget build(BuildContext context) {
    return CustomAdminScaffold(
      title: 'ACE Project | Package As-Built Register',
      route: PackageAsBuiltRegister.id,
      child: Center(child: Text("Hello, Package As-Built Register Page")),
    );
  }
}
