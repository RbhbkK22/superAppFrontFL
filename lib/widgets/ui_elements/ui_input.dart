import 'package:flutter/material.dart';
import 'package:supper_app/core/themes.dart';

class UiInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final UiInputTheme? theme;

  const UiInput({super.key, this.controller, this.hintText, this.theme});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: theme?.selectionColor ?? Colors.grey[400],
        ),
      ),
      child: TextField(
        cursorColor: theme?.cursorColor ?? Colors.black,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class UiInputTheme extends CustomTheme {
  final Color? cursorColor;
  final Color? selectionColor;

  UiInputTheme({this.cursorColor, this.selectionColor});
}
