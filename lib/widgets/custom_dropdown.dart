import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> items;
  final bool showSearchBox;
  final String hintText;
  final double width;
  final bool showButton;
  const CustomDropDown(
      {Key key,
      @required this.items,
      this.showSearchBox = true,
      this.hintText = 'Text:',
      this.width = 300.0,
      this.showButton = false})
      : super(key: key);
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: widget.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: DropdownSearch<String>(
                dropdownSearchDecoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                  contentPadding: EdgeInsets.only(left: 8.0),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[600])),
                ),

                mode: Mode.MENU,
                showSelectedItem: true,
                items: widget.items,
                hint: widget.hintText,
                onChanged: print,
                showSearchBox: widget.showSearchBox,
                showClearButton: true,
                // popupItemDisabled: (String s) => s.startsWith('I'),
                // label: "Project:",
              ),
            ),
          ),
          if (widget.showButton)
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20.0),
                ))
        ],
      ),
    );
  }
}
