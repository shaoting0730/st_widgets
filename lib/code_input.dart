import 'package:flutter/material.dart';

class CodeInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  final bool allBorder;
  const CodeInput({
    Key? key,
    required this.controller,
    required this.autoFocus,
    required this.allBorder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 50,
      padding: const EdgeInsets.all(5),
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          border: allBorder == true ? const OutlineInputBorder() : const UnderlineInputBorder(),
          counterText: '',
          hintStyle: const TextStyle(color: Colors.yellow, fontSize: 20.0),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
