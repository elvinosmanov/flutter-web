import 'package:can_can/pages/mc_lossh_register.dart';
import 'package:can_can/pages/package_as_built_register.dart';
import 'package:can_can/pages/package_lossh_register.dart';
import 'package:flutter/material.dart';

class GenerateRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MCLOSSHRegister.id:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => MCLOSSHRegister(),
          transitionDuration: Duration(milliseconds: 0),
          reverseTransitionDuration: Duration(milliseconds: 0),
        );
        break;
      case PackageAsBuiltRegister.id:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => PackageAsBuiltRegister(),
          transitionDuration: Duration(milliseconds: 0),
          reverseTransitionDuration: Duration(milliseconds: 0),
        );
        break;
      case PackageLOSSHRegister.id:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => PackageLOSSHRegister(),
          transitionDuration: Duration(milliseconds: 0),
          reverseTransitionDuration: Duration(milliseconds: 0),
        );
        break;
      default:
        return null;
    }
  }
}
