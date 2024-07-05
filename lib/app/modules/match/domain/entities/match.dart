import 'package:equatable/equatable.dart';

class Match extends Equatable {
  const Match({
    required this.date,
    required this.teamA,
    required this.teamB,
    required this.teamAScore,
    required this.teamBScore,
    required this.oneBetOddsAvg,
    required this.betsafeOddsAvg,
    required this.betssonOddsAvg,
    required this.likesCount,
    required this.starsCount,
    required this.viewsCount,
    required this.sharesCount,
    required this.channels,
    required this.stadium,
    required this.referee,
    required this.refereeAvatar,
    required this.refereeStats,
    required this.teamAImage,
    required this.teamBImage,
    required this.redCardMedia,
    required this.yellowCardMedia,
    required this.teamAStats,
    required this.teamBStats,
    required this.id,
  });

  final String date;
  final String teamA;
  final String teamB;
  final int teamAScore;
  final int teamBScore;
  final double oneBetOddsAvg;
  final double betsafeOddsAvg;
  final double betssonOddsAvg;
  final int likesCount;
  final int starsCount;
  final int viewsCount;
  final int sharesCount;
  final String channels;
  final String stadium;
  final String referee;
  final String refereeAvatar;
  final String refereeStats;
  final String teamAImage;
  final String teamBImage;
  final double redCardMedia;
  final double yellowCardMedia;
  final String teamAStats;
  final String teamBStats;
  final String id;

  @override
  List<Object?> get props => [
        date,
        teamA,
        teamB,
        teamAScore,
        teamBScore,
        oneBetOddsAvg,
        betsafeOddsAvg,
        betssonOddsAvg,
        likesCount,
        starsCount,
        viewsCount,
        sharesCount,
        channels,
        stadium,
        referee,
        refereeAvatar,
        refereeStats,
        teamAImage,
        teamBImage,
        redCardMedia,
        yellowCardMedia,
        teamAStats,
        teamBStats,
        id,
      ];
}
