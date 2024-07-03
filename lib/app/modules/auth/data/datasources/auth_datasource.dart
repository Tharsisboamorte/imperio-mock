import 'package:http/http.dart' as http;
import 'package:imperio_mock/core/services/constants/api_constants.dart';

abstract class AuthDataSrcInterface {
  const AuthDataSrcInterface();

  Future<String> signIn({
    required String email,
    required String password,
  });
}

class AuthDataSrcImpl implements AuthDataSrcInterface {
  const AuthDataSrcImpl(this._client);

  final http.Client _client;

  @override
  Future<String> signIn({required String email, required String password}) async {
    try {
      final result = await _client.post(Uri.parse(ApiConstants.kAuth));
      return 'result';
    } catch (e) {
      throw Exception(e);
    }
  }


}
