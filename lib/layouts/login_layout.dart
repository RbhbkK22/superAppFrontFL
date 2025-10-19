import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget {
  final Widget child;

  const LoginLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(child: child),
    );
  }
}
