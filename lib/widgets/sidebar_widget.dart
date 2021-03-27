import 'package:can_can/constants/custom_colors.dart';
import 'package:can_can/pages/mc_lossh_register.dart';
import 'package:can_can/pages/package_as_built_register.dart';
import 'package:can_can/pages/package_lossh_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class SideBarWidget {
  sideBarMenus(context, selectedRoute) {
    return SideBar(
      width: 280,
      iconColor: CustomColors.lightBlue,

      // activeIconColor: Colors.white,
      activeIconColor: CustomColors.grey,
      backgroundColor: CustomColors.grey,
      borderColor: CustomColors.grey2,
      activeBackgroundColor: CustomColors.lightBlue,
      textStyle: TextStyle(color: CustomColors.blue, fontSize: 16.0),
      activeTextStyle: TextStyle(color: Colors.white, fontSize: 16.0),
      items: const [
        MenuItem(
          title: 'MC LOSSH',
          route: MCLOSSHRegister.id,
          icon: Icons.dashboard,
        ),
        MenuItem(
          title: 'Package LOSSH',
          icon: Icons.file_copy,
          route: PackageLOSSHRegister.id,
        ),
        MenuItem(
          title: 'Package AsBuilt',
          icon: Icons.inventory,
          route: PackageAsBuiltRegister.id,
        ),
      ],
      selectedRoute: selectedRoute,
      onSelected: (item) {
        Navigator.of(context).pushNamed(item.route);
      },
      header: Container(
        height: 50,
        width: double.infinity,
        color: CustomColors.grey,
        child: Center(
          child: Text(
            'Register Type',
            style: TextStyle(
                color: CustomColors.darkBlue,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ),
      footer: Container(
        color: CustomColors.grey,
        padding: EdgeInsets.only(bottom: 8.0),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'images/azfen_logo.png',
                  height: 50,
                ),
              ),
              Image.asset(
                'images/bp_logo.png',
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
