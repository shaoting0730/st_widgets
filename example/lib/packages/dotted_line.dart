import 'package:flutter/material.dart';
import 'package:st_widgets/st_widgets.dart';

class DottedLineWidget extends StatefulWidget {
  const DottedLineWidget({Key? key}) : super(key: key);

  @override
  State<DottedLineWidget> createState() => _DottedLineWidgetState();
}

class _DottedLineWidgetState extends State<DottedLineWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('虚线'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          DottedLine(
            direction: Axis.horizontal,
            color: Colors.red,
            height: 1,
          ),
          SizedBox(
            height: 50,
          ),
          DottedLine(direction: Axis.horizontal, color: Colors.grey, height: 2),
          SizedBox(
            height: 50,
          ),
          DottedLine(direction: Axis.horizontal, color: Colors.red, height: 1),
          SizedBox(
            height: 50,
          ),
          DottedLine(direction: Axis.horizontal, color: Colors.grey, height: 10),
          Container(
            width: 100,
            height: 100,
            child: DottedLine(direction: Axis.horizontal, color: Colors.yellow, height: 5),
          ),
          Container(
            width: 100,
            height: 100,
            child: DottedLine(direction: Axis.vertical, color: Colors.red, height: 8),
          ),
          Container(
            width: 200,
            height: 100,
            child: DottedLine(direction: Axis.horizontal, color: Colors.green, height: 2),
          ),
        ],
      ),
    );
  }
}
