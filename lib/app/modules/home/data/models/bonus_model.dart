import 'package:imperio_mock/app/modules/home/domain/entities/bonus.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class BonusModel extends Bonus {
  const BonusModel({
    required super.platform,
    required super.discount,
    required super.id,
  });

  const BonusModel.empty()
      : this(
          id: '',
          platform: '',
          discount: '',
        );

  BonusModel.fromMap(DataMap map)
      : super(
          discount: map['discount'] as String,
          id: map['id'] as String,
          platform: map['platform'] as String,
        );
}
