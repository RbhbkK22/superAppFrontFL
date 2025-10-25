import 'package:supper_app/core/models/user.dart';
import 'package:bloc/bloc.dart';

part 'auth_states.dart';
part 'auth_event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  AuthBloc() : super(AuthInitial());

}


