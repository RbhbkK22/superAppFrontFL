import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supper_app/core/mixins/un_subscriber.dart';
import 'package:supper_app/widgets/ui_elements/ui_input.dart';

class UiSecretInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final UiInputTheme? theme;

  const UiSecretInput({super.key, this.controller, this.hintText, this.theme});

  @override
  State<UiSecretInput> createState() => _UiSecretInputState();
}

class _UiSecretInputState extends State<UiSecretInput> with UnSubscriber {

  final obscureCtrl = BehaviorSubject.seeded(true);
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    addSubs = obscureCtrl.listen((obscure) {
      setState(() {
        isObscure = obscure;
      });
    });
  }

  UiInputTheme? get _theme => widget.theme;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: _theme?.selectionColor ?? Colors.grey[400]
        )
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: obscureCtrl.value,
        cursorColor: _theme?.cursorColor ?? Colors.black,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: IconButton(
            onPressed: () => obscureCtrl.add(!isObscure),
            icon: Icon(
              obscureCtrl.value == true ? Icons.visibility : Icons.visibility_off,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
