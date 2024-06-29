class ApiConstants {
  static const String kBaseUrl = 'https://6569cc7dde53105b0dd7af5c.mockapi.io';

  static String kAuth = '/login';

  static String kSportsList = '/sports';

  static String kChampionships = '/championships';

  static String kMatches = '/matches';

  static String kBetsFromTheMatch = '$kMatches/{id}/bets';

  static String kMatchOdds = '$kMatches/{id}/odds';

  static String kTeamsLastMatches = '$kMatches/{id}/last_matches';

  static String kBonusList = '/bonus';

  static String kWonBets = '/won_bets';

  static String kTipsList = '/tips';

  static String kDetailsFromMatch = '$kBaseUrl/matches/{id}';
}
