import 'package:http/http.dart' as http;
import 'package:imperio_mock/core/services/constants/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthDataSrcInterface {
  const AuthDataSrcInterface();

  Future<String> signIn({
    required String email,
    required String password,
  });

  Future<void> cacheUser();

  Future<bool> checkIfUserIsLogged();
}

const kLoggedUserKey = 'logged_user';

class AuthDataSrcImpl implements AuthDataSrcInterface {
  const AuthDataSrcImpl(this._client, this._prefs);

  final http.Client _client;
  final SharedPreferences _prefs;

  @override
  Future<String> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final result = await _client.post(Uri.parse(ApiConstants.kAuth));
      return 'result';
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> cacheUser() async {
      try{
        await _prefs.setBool(kLoggedUserKey, true);
      } catch (e){
          throw Exception(e);
      }
  }

  @override
  Future<bool> checkIfUserIsLogged() async {
    try {
      return _prefs.getBool(kLoggedUserKey) ?? true;
    } catch(e){
      throw Exception(e);
    }
  }
}
