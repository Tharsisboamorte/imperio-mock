class ApiConstants {
  static const String kBaseUrl = 'https://6569cc7dde53105b0dd7af5c.mockapi.io';

  static String kAuth = '$kBaseUrl/login';

  static String kSportsList = '$kBaseUrl/sports';

  static String kChampionships = '$kBaseUrl/championships';

  static String kMatches = '$kBaseUrl/matches';

  static String kBetsFromTheMatch = '$kMatches/{id}/bets';

  static String kMatchOdds = '$kMatches/{id}/odds';

  static String kTeamsLastMatches = '$kMatches/{id}/last_matches';

  static String kBonusList = '$kBaseUrl/bonus';

  static String kWonBets = '$kBaseUrl/won_bets';

  static String kTipsList = '$kBaseUrl/tips';

  static String kDetailsFromMatch = '$kBaseUrl/matches/{id}';
}
