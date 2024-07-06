import 'package:equatable/equatable.dart';

class WonBets extends Equatable {
  const WonBets({
    required this.user,
    required this.userAvatar,
    required this.platform,
    required this.score,
    required this.id,
  });

  const WonBets.empty()
      : this(
          score: 0,
          user: '',
          userAvatar: '',
          platform: '',
          id: '',
        );

  final String user;
  final String userAvatar;
  final String platform;
  final double score;
  final String id;

  @override
  List<Object?> get props => [user, userAvatar, platform, score, id];
}
