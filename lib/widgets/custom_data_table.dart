import 'dart:math';

import 'package:can_can/models/column.dart';
import 'package:can_can/models/package.dart';
import 'package:flutter/material.dart';

class CustomDataTable extends StatefulWidget {
  @override
  _CustomDataTableState createState() => _CustomDataTableState();
}

class _CustomDataTableState extends State<CustomDataTable> {
  int _currrentColumnIndex = 0;
  bool _isAscending = true;
  TextStyle headingStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16);
  List letters;
  List<Package> _packages;
  List<Widget> _columns;

  @override
  void initState() {
    letters = Columns.letters;
    _columns = Columns.columns
        .map((heading) => Text(
              heading,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ))
        .toList();
    _packages = List.generate(30, (i) {
      int random = Random().nextInt(200) + 1;
      return Package(
        no: i,
        revisionNo: '00${Random().nextInt(9)}',
        project: random % 3 == 0
            ? 'Drilling'
            : i % 3 == 1
                ? 'Topsides'
                : 'LQ',
        system: '6${letters[Random().nextInt(4)]}-${random}0',
        subsystem: "6A-${random}0-${Random().nextInt(10) + 1}",
        documentNumber:
            'BP-6A-${random}0-${Random().nextInt(10) + 1}-00${Random().nextInt(9)}',
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          height: 300,
          width: MediaQuery.of(context).size.width * 0.6,
          child: DataTable(
            sortColumnIndex: _currrentColumnIndex,
            sortAscending: _isAscending,

            // dividerThickness: 2,
            dataRowHeight: 24,
            headingRowHeight: 30,
            columnSpacing: 20,
            columns: [
              DataColumn(
                label: _columns[0],
                onSort: noSort,
              ),
              DataColumn(label: _columns[1], onSort: projectSort),
              DataColumn(label: _columns[2], onSort: systemSort),
              DataColumn(label: _columns[3]),
              DataColumn(label: _columns[4]),
              DataColumn(label: _columns[5], numeric: true),
              DataColumn(label: _columns[6]),
            ],

            rows: _packages
                .map(
                  (package) => DataRow(
                    cells: [
                      DataCell(Text(package.no.toString())),
                      DataCell(Text(package.project.toString())),
                      DataCell(Text(package.system.toString())),
                      DataCell(Text(package.subsystem.toString())),
                      DataCell(Text(package.documentNumber.toString())),
                      DataCell(Text(package.revisionNo.toString())),
                      DataCell(Icon(Icons.clear), onTap: () {
                        setState(() {
                          _packages.remove(package);
                        });
                      }),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  void noSort(columnIndex, ascending) {
    setState(() {
      _currrentColumnIndex = columnIndex;

      if (_isAscending) {
        _isAscending = false;
        _packages.sort((a, b) {
          return b.no.compareTo(a.no);
        });
      } else {
        _isAscending = true;
        _packages.sort((a, b) {
          return a.no.compareTo(b.no);
        });
      }
    });
  }

  void projectSort(columnIndex, ascending) {
    setState(() {
      _currrentColumnIndex = columnIndex;

      if (_isAscending) {
        _isAscending = false;
        _packages.sort((a, b) {
          return b.project.compareTo(a.project);
        });
      } else {
        _isAscending = true;
        _packages.sort((a, b) {
          return a.project.compareTo(b.project);
        });
      }
    });
  }

  void systemSort(columnIndex, ascending) {
    setState(() {
      _currrentColumnIndex = columnIndex;

      if (_isAscending) {
        _isAscending = false;
        _packages.sort((a, b) {
          return b.system.compareTo(a.system);
        });
      } else {
        _isAscending = true;
        _packages.sort((a, b) {
          return a.system.compareTo(b.system);
        });
      }
    });
  }
}
