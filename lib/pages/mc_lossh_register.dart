import 'package:can_can/constants/custom_colors.dart';
import 'package:can_can/models/column.dart';
import 'package:can_can/widgets/custom_admin_scaffold.dart';
import 'package:can_can/widgets/custom_data_table.dart';
import 'package:can_can/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

class MCLOSSHRegister extends StatelessWidget {
  static const String id = 'mc-losh-register';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomAdminScaffold(
      title: 'ACE Project | MC LOSSH Register',
      route: MCLOSSHRegister.id,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomDropDown(
                  items: ["fdgs", 'sdfg', 'sdf'],
                  width: width * 0.14,
                  showSearchBox: false,
                  hintText: Columns.project,
                ),
                SizedBox(
                  width: 8.0,
                ),
                CustomDropDown(
                  items: ["fdgs", 'sdfg', 'sdf'],
                  width: width * 0.23,
                  hintText: Columns.system,
                ),
                SizedBox(
                  width: 8.0,
                ),
                CustomDropDown(
                  items: ["fdgs", 'sdfg', 'sdf'],
                  width: width * 0.23,
                  hintText: Columns.subsystem,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomDropDown(
                  items: ["fdgs", 'sdfg', 'sdf'],
                  width: width * 0.46 + 8,
                  hintText: Columns.documentNumber,
                ),
                SizedBox(
                  width: 8.0,
                ),
                CustomDropDown(
                  items: ["fdgs", 'sdfg', 'sdf'],
                  width: width * 0.14,
                  hintText: Columns.revisionNo,
                ),
              ],
            ),
            GestureDetector(
              child: Container(
                  width: width * 0.6 + 16,
                  height: 34.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    // color: CustomColors.blue,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add to List',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: CustomDataTable(),
            )
          ],
        ),
      ),
    );
  }
}
