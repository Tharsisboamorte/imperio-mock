import 'package:equatable/equatable.dart';

class LocalMatch extends Equatable {
  const LocalMatch({
    required this.id,
    required this.teamBStats,
    required this.teamAStats,
    required this.yellowCardMedia,
    required this.redCardMedia,
    required this.teamBImage,
    required this.teamAImage,
    required this.refereeStats,
    required this.refereeAvatar,
    required this.referee,
    required this.stadium,
    required this.channels,
    required this.sharesCount,
    required this.viewsCount,
    required this.starsCount,
    required this.likesCount,
    required this.betssonOddsAvg,
    required this.betsafeOddsAvg,
    required this.oneXbetOddsAvg,
    required this.teamBScore,
    required this.teamAScore,
    required this.teamB,
    required this.teamA,
    required this.date,
  });

  const LocalMatch.empty()
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

  final String date;
  final String teamA;
  final String teamB;
  final int teamAScore;
  final int teamBScore;
  final double oneXbetOddsAvg;
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
        oneXbetOddsAvg,
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
