import 'package:imperio_mock/app/modules/sports/domain/entities/sports.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class SportsModel extends Sports {
  const SportsModel({
    required super.name,
    required super.image,
    required super.id,
  });

  const SportsModel.empty()
      : this(
          id: '',
          name: '',
          image: '',
        );

  SportsModel.fromMap(DataMap map)
      : super(
          name: map['name'] as String,
          id: map['id'] as String,
          image: map['image'] as String,
        );
}
