import 'package:flutter/material.dart';

class LoginLayout extends StatelessWidget {
  final Widget child;

  const LoginLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0x21252bff),
      body: Center(
        child: Container(
          width: screenSize.width * 0.8,
          constraints: BoxConstraints(maxWidth: 500),
          child: child,
        ),
      ),
    );
  }
}
