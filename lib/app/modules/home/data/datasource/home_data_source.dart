import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:imperio_mock/app/modules/home/data/models/tip_model.dart';
import 'package:imperio_mock/core/services/constants/api_constants.dart';
import 'package:imperio_mock/core/utils/logger_util.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class HomeDataSrcInterface {
  const HomeDataSrcInterface();

  Future<List<TipModel>> getTipsList();
}

class HomeDataSrcImpl implements HomeDataSrcInterface {
  const HomeDataSrcImpl({
    required http.Client client,
  }) : _client = client;

  final http.Client _client;

  @override
  Future<List<TipModel>> getTipsList() async {
    try {
      final response = await _client.get(Uri.parse(ApiConstants.kTipsList));
      LogUtil.printLog(response.body);
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map((tipData) => TipModel.fromMap(tipData))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
