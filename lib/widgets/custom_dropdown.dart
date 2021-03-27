import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> items;
  final bool showSearchBox;
  final String hintText;
  final double width;
  const CustomDropDown({
    Key key,
    @required this.items,
    this.showSearchBox = true,
    this.hintText = 'Text:',
    this.width = 300.0,
  }) : super(key: key);
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final double fontSize = 15;
  final hintStyle = TextStyle(color: Colors.grey, fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          // HtmlElementView(viewType: 'input'),
          SizedBox(
            width: widget.width,
            height: 44,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: DropdownSearch<String>(
                mode: Mode.MENU,
                dropdownBuilderSupportsNullItem: true,
                showSelectedItem: true,
                items: widget.items,
                hint: widget.hintText,
                onChanged: print,
                showSearchBox: widget.showSearchBox,
                showClearButton: true,
                maxHeight: 120,
                searchBoxStyle:
                    TextStyle(color: Colors.black, fontSize: fontSize),
                //esas hissenin decorationi
                dropdownSearchDecoration: InputDecoration(
                  //style of hint
                  hintStyle: hintStyle,
                  contentPadding: EdgeInsets.only(left: 10.0),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[600])),
                ),
                searchBoxDecoration: InputDecoration(
                  hintText: 'Search',
                  isCollapsed: true,
                  hintStyle: hintStyle,
                  contentPadding: EdgeInsets.only(left: 10, top: 8, bottom: 8),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue[600])),
                ),
                //list of items decoration
                popupItemBuilder: (context, item, isSelected) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 4.0),
                    child: Text(
                      item,
                      style: TextStyle(fontSize: fontSize, color: Colors.black),
                    ),
                  );
                },
                //choosen item decoration
                dropdownBuilder: (context, selectedItem, itemAsString) {
                  return Text(
                    itemAsString,
                    style: TextStyle(fontSize: fontSize, color: Colors.black),
                  );
                },

                dropdownButtonBuilder: (context) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.arrow_drop_down));
                },
                clearButtonBuilder: (context) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.clear,
                        size: 18,
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
