import 'package:flutter/material.dart';

class OrientationLayputIconsWidget extends StatefulWidget {
  const OrientationLayputIconsWidget({super.key});

  @override
  State<OrientationLayputIconsWidget> createState() => _OrientationLayputIconsWidgetState();
}

class _OrientationLayputIconsWidgetState extends State<OrientationLayputIconsWidget> {
  @override
  Widget build(BuildContext context) {
    Orientation _orientation = MediaQuery.of(context).orientation;
    return _orientation == Orientation.portrait
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        ),
      ],
    )
        : Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.school,
          size: 48.0,
        ),
        Icon(
          Icons.brush,
          size: 48.0,
        ),
      ],
    );
  }
}


