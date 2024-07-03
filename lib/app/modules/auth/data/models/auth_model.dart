import 'package:imperio_mock/app/modules/auth/domain/entities/auth.dart';

class AuthModel extends LocalAuth{
  const AuthModel({required super.authToken, required super.refreshToken});

}