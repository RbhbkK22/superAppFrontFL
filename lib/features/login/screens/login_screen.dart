import 'package:flutter/material.dart';
import 'package:supper_app/core/themes.dart';
import 'package:supper_app/widgets/ui_elements/ui_input.dart';
import 'package:supper_app/widgets/ui_elements/ui_secret_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 24,
      children: [
        Text('Sign in to your Account'),
        Container(
          width: screenSize.width * 0.8,
          constraints: BoxConstraints(maxWidth: 500),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              UiInput(
                hintText: 'login',
                theme: CustomThemeManager.getTheme('loginInput'),
              ),
              Divider(),
              UiSecretInput(
                hintText: 'password',
                theme: CustomThemeManager.getTheme('loginInput'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
