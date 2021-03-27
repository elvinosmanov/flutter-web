import 'package:can_can/widgets/sidebar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class CustomAdminScaffold extends StatelessWidget {
  final SideBarWidget _sideBar = SideBarWidget();
  final String route;
  final Widget child;
  final String title;

  CustomAdminScaffold({Key key, this.route, this.child, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Container(
                padding: EdgeInsets.only(
                  left: 280,
                ),
                child: Text(title))),
        // centerTitle: true,
        backgroundColor: Color(0xff1c4966),
      ),
      sideBar: _sideBar.sideBarMenus(context, route),
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(10),
            child: child),
      ),
    );
  }
}
