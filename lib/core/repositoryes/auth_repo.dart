import 'package:supper_app/core/models/user.dart';
abstract class AuthRepo {

  Future<User> login({required String login, required String password});
}

class AuthRepoImpl implements AuthRepo {

  @override
  Future<User> login({required String login, required String password}) async {
    await Future.delayed(Duration(seconds: 2));
    return User(id: '12', name: 'name', token: 'token');
  }

}