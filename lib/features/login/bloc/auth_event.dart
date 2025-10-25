part of 'auth_bloc.dart';


sealed class AuthEvent {}

class AuthLogIn extends AuthEvent {
  final String email;
  final String password;

  AuthLogIn({required this.email, required this.password});
}

class AuthLogOut extends AuthEvent {}

class AuthCheckStatus extends AuthEvent {}

