import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supper_app/core/mixins/un_subscriber.dart';

class LoginButton extends StatefulWidget {
  final BehaviorSubject<bool> controller;
  final String text;
  final VoidCallback onPressed;

  const LoginButton({super.key, required this.controller, required this.text, required this.onPressed});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> with UnSubscriber {
  bool isLoad = false;

  @override
  void initState() {
    super.initState();
    addSubs = widget.controller.listen((event) {
      setState(() {
        isLoad = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
        backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide.none,
          ),
        ),
      ),
      child: isLoad == true ? CircularProgressIndicator(color: Colors.white,) : Text(widget.text, style: TextStyle(color: Colors.white))

    );
  }
}
