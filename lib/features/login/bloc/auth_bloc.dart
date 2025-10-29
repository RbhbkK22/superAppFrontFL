import 'dart:async';

import 'package:supper_app/core/models/user.dart';
import 'package:bloc/bloc.dart';
import 'package:supper_app/core/repositoryes/auth_repo.dart';

part 'auth_states.dart';

part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;

  AuthBloc(this._authRepo) : super(AuthInitial()) {
    on<AuthLogIn>(_onAuthLogIn);
  }

  FutureOr<void> _onAuthLogIn(AuthLogIn event, Emitter<AuthState> emit) async {
    emit(AuthInitial());
    try {
      emit(AuthLoading());
      final user = await _authRepo.login(
        login: event.email,
        password: event.password,
      );
      emit(AuthSuccess(user));
    } catch (error) {
      emit(AuthFailure(error.toString()));
    }
  }
}
