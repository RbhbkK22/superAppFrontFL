import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Text('Sign in to your Account'),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              TextField(decoration: InputDecoration()),
              TextField(),
            ],
          ),
        ),
      ],
    );
  }
}
