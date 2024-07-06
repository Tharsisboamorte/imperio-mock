import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:imperio_mock/app/modules/sports/data/model/sports_model.dart';
import 'package:imperio_mock/core/services/constants/api_constants.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class SportsDataSrcInterface {
  const SportsDataSrcInterface();

  Future<List<SportsModel>> getSports();
}

class SportsDataSrcImpl implements SportsDataSrcInterface {
  const SportsDataSrcImpl({
    required http.Client client,
  }) : _client = client;

  final http.Client _client;

  @override
  Future<List<SportsModel>> getSports() async {
    try {
      final response = await _client.get(Uri.parse(ApiConstants.kSportsList));
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map(SportsModel.fromMap)
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
