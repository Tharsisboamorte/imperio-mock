import 'package:imperio_mock/app/modules/auth/domain/entities/auth.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class AuthModel extends LocalAuth {
  const AuthModel({required super.authToken, required super.refreshToken});

  const AuthModel.empty()
      : this(
          authToken: '',
          refreshToken: '',
        );

  AuthModel.fromMap(DataMap map)
      : super(
          authToken: map['auth_token'] as String,
          refreshToken: map['refresh_token'] as String,
        );
}
