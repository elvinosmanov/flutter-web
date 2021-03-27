import 'package:flutter/material.dart';

import '../widgets/custom_dropdown.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<String> project = [
    'Drilling',
    'TopSides',
    'LQ',
    'Drilling',
    'TopSides',
    'LQ',
    'Drilling',
    'TopSides',
    'LQ',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustomDropDown(
                showSearchBox: false,
                hintText: 'Project:',
                items: project,
              ),
              CustomDropDown(
                hintText: 'System:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
              CustomDropDown(
                hintText: 'Subystem:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
              CustomDropDown(
                hintText: 'Package:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
            ],
          ),
          SizedBox(
            width: 50.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomDropDown(
                width: 450,
                hintText: 'Drawing no:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
              CustomDropDown(
                width: 200,
                hintText: 'Revison no:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
              CustomDropDown(
                width: 200,
                hintText: 'Status of change:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
              CustomDropDown(
                width: 200,
                hintText: 'Date of change:',
                items: ['Drilling', 'TopSides', 'LQ'],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
