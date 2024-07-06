import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:imperio_mock/app/modules/auth/data/models/auth_model.dart';
import 'package:imperio_mock/core/services/constants/api_constants.dart';
import 'package:imperio_mock/core/utils/logger_util.dart';
import 'package:imperio_mock/core/utils/typedef.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthDataSrcInterface {
  const AuthDataSrcInterface();

  Future<AuthModel> signIn({
    required String email,
    required String password,
  });

  Future<void> cacheUser();

  Future<bool> checkIfUserIsLogged();
}

const kLoggedUserKey = 'logged_user';

class AuthDataSrcImpl implements AuthDataSrcInterface {
  const AuthDataSrcImpl({
    required http.Client client,
    required SharedPreferences prefs,
  })  : _client = client,
        _prefs = prefs;

  final http.Client _client;
  final SharedPreferences _prefs;

  @override
  Future<AuthModel> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _client.post(Uri.parse(ApiConstants.kAuth));
      LogUtil.printLog(' RESPONSE BODY: ${response.body}');
      return AuthModel.fromMap(jsonDecode(response.body) as DataMap);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> cacheUser() async {
    try {
      await _prefs.setBool(kLoggedUserKey, true);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<bool> checkIfUserIsLogged() async {
    try {
      return _prefs.getBool(kLoggedUserKey) ?? true;
    } catch (e) {
      throw Exception(e);
    }
  }
}
