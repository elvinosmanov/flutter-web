import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/custom_dropdown.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> project = ['Drilling', 'TopSides', 'LQ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mechanical Completion'),
      ),
      drawer: Drawer(),
      body: Center(
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
                  showButton: true,
                  width: 200,
                  hintText: 'Date of change:',
                  items: ['Drilling', 'TopSides', 'LQ'],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
