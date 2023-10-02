import 'package:flutter/material.dart';


class OrientationLayoutWidget extends StatefulWidget {
  const OrientationLayoutWidget({super.key});

  @override
  State<OrientationLayoutWidget> createState() => _OrientationLayoutWidgetState();
}

class _OrientationLayoutWidgetState extends State<OrientationLayoutWidget> {
  @override
    Widget build(BuildContext context) {
      Orientation _orientation = MediaQuery.of(context).orientation;
      return _orientation == Orientation.portrait
          ? Container(
        alignment: Alignment.center,
        color: Colors.yellow,
        height: 100.0,
        width: 100.0,
        child: Text('Portrait'),
      )
          : Container(
        alignment: Alignment.center,
        color: Colors.lightGreen,
        height: 100.0,
        width: 200.0,
        child: Text('Landscape'),
      );
    }
  }
