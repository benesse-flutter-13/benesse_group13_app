import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({
    Key key,
    this.label,
    // this.icon,
    // this.pic,
  }) : super(key: key);
  // MyStatefulWidget({this.icon,this.label});
  // final IconData icon;
  final String label;
  // final String pic;
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var list2 = false;
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      // value: _isCheckboxChecked,
      value: list2,
      onChanged: (bool value) {
        setState(() => list2 = value);
        // print(_isCheckboxChecked);
      },
      title: Text(widget.label),
      // subtitle: Text("This is a subtitle"),
      // secondary: Icon(widget.icon),
      // secondary: Image.asset(widget.pic),
      // secondary: ImageIcon(NetworkImage(widget.pic)),
      activeColor: Colors.blue,
      selected: list2,
    );
  }
}
