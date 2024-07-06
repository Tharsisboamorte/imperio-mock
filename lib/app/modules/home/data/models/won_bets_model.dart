import 'package:imperio_mock/app/modules/home/domain/entities/won_bets.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class WonBetsModel extends WonBets {
  const WonBetsModel({
    required super.user,
    required super.userAvatar,
    required super.platform,
    required super.score,
    required super.id,
  });

  const WonBetsModel.empty()
      : this(
          score: 0,
          user: '',
          userAvatar: '',
          platform: '',
          id: '',
        );

  WonBetsModel.fromMap(DataMap map)
      : super(
          id: map['id'] as String,
          score: map['score'] as double,
          platform: map['platform'] as String,
          userAvatar: map['user_avatar'] as String,
          user: map['user'] as String,
        );
}
