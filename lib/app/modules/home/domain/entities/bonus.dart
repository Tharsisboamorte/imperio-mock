import 'package:equatable/equatable.dart';

class Bonus extends Equatable {
  const Bonus({
    required this.platform,
    required this.discount,
    required this.id,
  });

  const Bonus.empty()
      : this(
          id: '',
          platform: '',
          discount: '',
        );

  final String platform;
  final String discount;
  final String id;

  @override
  List<Object?> get props => [id, discount, platform];

  @override
  String toString() {
    return 'Tip {discount: $discount, platform: $platform, id: $id}';
  }
}
