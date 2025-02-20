import 'package:imperio_mock/app/modules/home/domain/entities/match.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class MatchModel extends LocalMatch {
  const MatchModel({
    required super.date,
    required super.teamA,
    required super.teamB,
    required super.teamAScore,
    required super.teamBScore,
    required super.oneXbetOddsAvg,
    required super.betsafeOddsAvg,
    required super.betssonOddsAvg,
    required super.likesCount,
    required super.starsCount,
    required super.viewsCount,
    required super.sharesCount,
    required super.channels,
    required super.stadium,
    required super.referee,
    required super.refereeAvatar,
    required super.refereeStats,
    required super.teamAImage,
    required super.teamBImage,
    required super.redCardMedia,
    required super.yellowCardMedia,
    required super.teamAStats,
    required super.teamBStats,
    required super.id,
  });

  const MatchModel.empty()
      : this(
          date: '',
          teamA: '',
          teamB: '',
          teamAScore: 0,
          teamBScore: 0,
          oneXbetOddsAvg: 0.0,
          betsafeOddsAvg: 0.0,
          betssonOddsAvg: 0.0,
          likesCount: 0,
          starsCount: 0,
          viewsCount: 0,
          sharesCount: 0,
          channels: '',
          stadium: '',
          referee: '',
          refereeAvatar: '',
          refereeStats: '',
          teamAImage: '',
          teamBImage: '',
          redCardMedia: 0.0,
          yellowCardMedia: 0.0,
          teamAStats: '',
          teamBStats: '',
          id: '',
        );

  MatchModel.fromMap(DataMap map)
      : super(
          date: map['date'] as String,
          teamA: map['team_a'] as String,
          teamB: map['team_b'] as String,
          teamAScore: map['team_a_score'] as int,
          teamBScore: map['team_b_score'] as int,
          oneXbetOddsAvg: double.parse(map['1xbet_odds_avg'].toString()),
          betsafeOddsAvg: double.parse(map['betsafe_odds_avg'].toString()),
          betssonOddsAvg: double.parse(map['betsson_odds_avg'].toString()),
          likesCount: map['likes_count'] as int,
          starsCount: map['stars_count'] as int,
          viewsCount: map['views_count'] as int,
          sharesCount: map['shares_count'] as int,
          channels: map['channels'] as String,
          stadium: map['stadium'] as String,
          referee: map['referee'] as String,
          refereeAvatar: map['referee_avatar'] as String,
          refereeStats: map['referee_stats'] as String,
          teamAImage: map['team_a_image'] as String,
          teamBImage: map['team_b_image'] as String,
          redCardMedia: double.parse(map['red_card_media'].toString()),
          yellowCardMedia: double.parse(map['yellow_card_media'].toString()),
          teamAStats: map['team_a_stats'] as String,
          teamBStats: map['team_b_stats'] as String,
          id: map['id'] as String,
        );
}
