import 'package:flutter/material.dart';
import 'package:st_widgets/st_widgets.dart';

class CodeInputPage extends StatefulWidget {
  const CodeInputPage({Key? key}) : super(key: key);

  @override
  State<CodeInputPage> createState() => _CodeInputPageState();
}

class _CodeInputPageState extends State<CodeInputPage> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  final TextEditingController _field1 = TextEditingController();
  final TextEditingController _field2 = TextEditingController();
  final TextEditingController _field3 = TextEditingController();
  final TextEditingController _field4 = TextEditingController();
  final TextEditingController _field5 = TextEditingController();
  final TextEditingController _field6 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code输入框'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CodeInput(controller: _fieldOne, autoFocus: true, allBorder: true),
              CodeInput(controller: _fieldTwo, autoFocus: true, allBorder: true),
              CodeInput(controller: _fieldThree, autoFocus: true, allBorder: true),
              CodeInput(controller: _fieldFour, autoFocus: true, allBorder: true),
            ],
          ),
          Row(
            children: [
              CodeInput(controller: _field1, autoFocus: true, allBorder: false),
              CodeInput(controller: _field2, autoFocus: true, allBorder: false),
              CodeInput(controller: _field3, autoFocus: true, allBorder: false),
              CodeInput(controller: _field4, autoFocus: true, allBorder: false),
              CodeInput(controller: _field5, autoFocus: true, allBorder: false),
              CodeInput(controller: _field6, autoFocus: true, allBorder: false),
            ],
          ),
        ],
      ),
    );
  }
}
