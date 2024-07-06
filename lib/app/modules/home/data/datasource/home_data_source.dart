import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:imperio_mock/app/modules/home/data/models/bonus_model.dart';
import 'package:imperio_mock/app/modules/home/data/models/championships_model.dart';
import 'package:imperio_mock/app/modules/home/data/models/match_model.dart';
import 'package:imperio_mock/app/modules/home/data/models/tip_model.dart';
import 'package:imperio_mock/app/modules/home/data/models/won_bets_model.dart';
import 'package:imperio_mock/core/services/constants/api_constants.dart';
import 'package:imperio_mock/core/utils/logger_util.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

abstract class HomeDataSrcInterface {
  const HomeDataSrcInterface();

  Future<List<TipModel>> getTipsList();

  Future<List<ChampionshipsModel>> getChampionshipsList();

  Future<List<WonBetsModel>> getWonBetsList();

  Future<List<BonusModel>> getBonusList();

  Future<List<MatchModel>> getMatchesList();
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
      LogUtil.printLog('TIPS LIST \n ${response.body}');
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map(TipModel.fromMap)
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<ChampionshipsModel>> getChampionshipsList() async {
    try {
      final response = await _client.get(
        Uri.parse(ApiConstants.kChampionships),
      );
      LogUtil.printLog('CHAMPIONSHIPS LIST \n ${response.body}');
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map(ChampionshipsModel.fromMap)
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<WonBetsModel>> getWonBetsList() async {
    try {
      final response = await _client.get(
        Uri.parse(ApiConstants.kWonBets),
      );
      LogUtil.printLog('WON BETS \n ${response.body}');
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map((wonBets) => WonBetsModel.fromMap(wonBets))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<BonusModel>> getBonusList() async {
    try {
      final response = await _client.get(
        Uri.parse(ApiConstants.kBonusList),
      );
      LogUtil.printLog('BONUS LIST \n ${response.body}');
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map(BonusModel.fromMap)
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<List<MatchModel>> getMatchesList() async {
    try {
      final response = await _client.get(
        Uri.parse(ApiConstants.kMatches),
      );
      LogUtil.printLog('Matches LIST \n ${response.body}');
      return List<DataMap>.from(jsonDecode(response.body) as List)
          .map((matches) => MatchModel.fromMap(matches))
          .toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
