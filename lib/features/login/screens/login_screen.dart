import 'package:flutter/material.dart';
import 'package:supper_app/core/themes.dart';
import 'package:supper_app/widgets/ui_elements/ui_input.dart';
import 'package:supper_app/widgets/ui_elements/ui_secret_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sign in to your Account',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Create account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              UiInput(
                hintText: 'login',
                theme: CustomThemeManager.getTheme<UiInputTheme>('loginInput'),
              ),
              Divider(),
              UiSecretInput(
                hintText: 'password',
                theme: CustomThemeManager.getTheme<UiInputTheme>('loginInput'),
              ),
            ],
          ),
        ),
        SizedBox(height: 12,),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forget Password',
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
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
          child: const Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
