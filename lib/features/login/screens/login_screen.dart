import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rxdart/rxdart.dart';
import 'package:supper_app/core/mixins/un_subscriber.dart';
import 'package:supper_app/core/themes.dart';
import 'package:supper_app/features/login/bloc/auth_bloc.dart';
import 'package:supper_app/widgets/ui_elements/login_button.dart';
import 'package:supper_app/widgets/ui_elements/ui_input.dart';
import 'package:supper_app/widgets/ui_elements/ui_secret_input.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with UnSubscriber {
  final BehaviorSubject<bool> loadingCtrl = BehaviorSubject.seeded(false);
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
        SizedBox(height: 12),
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
        LoginButton(
          controller: loadingCtrl,
          text: 'Login',
          onPressed: () {
            context.read<AuthBloc>().add(AuthLogIn(email: 'email', password: 'password'));
          },
        ),
        BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            print('!!!!!!!!!');
            print(state);
            if (state is AuthLoading) {
              print('!!!!!!!');
              loadingCtrl.add(true);
              return;
            }
            if (state is AuthSuccess) {
              loadingCtrl.add(false);
              context.go('/main');
              return;
            }
            loadingCtrl.add(false);
          }, builder: (context, state) {
            return state is AuthFailure ? Text('data') : SizedBox();
        },
        ),
      ],
    );
  }
}
