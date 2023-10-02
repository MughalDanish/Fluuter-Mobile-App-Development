import 'package:flutter/material.dart';

class OrientationBuilderWidget extends StatefulWidget {
  const OrientationBuilderWidget({super.key});

  @override
  State<OrientationBuilderWidget> createState() => _OrientationBuilderWidgetState();
}

class _OrientationBuilderWidgetState extends State<OrientationBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return orientation == Orientation.portrait
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
      },
    );
  }
}

