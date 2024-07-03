import 'package:equatable/equatable.dart';

class LocalAuth extends Equatable {
  const LocalAuth({
    required this.authToken,
    required this.refreshToken,
  });

  const LocalAuth.empty()
      : this(
          authToken: '',
          refreshToken: '',
        );

  final String authToken;
  final String refreshToken;

  @override
  List<Object?> get props => [authToken,refreshToken];
}
