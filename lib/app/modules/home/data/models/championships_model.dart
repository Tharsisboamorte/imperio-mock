import 'package:imperio_mock/app/modules/home/domain/entities/championships.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class ChampionshipsModel extends Championships {
  const ChampionshipsModel({
    required super.createdAt,
    required super.name,
    required super.image,
    required super.id,
  });

  const ChampionshipsModel.empty()
      : this(
          createdAt: '',
          id: '',
          image: '',
          name: '',
        );

  ChampionshipsModel.fromMap(DataMap map)
      : super(
          image: map['image'] as String,
          id: map['id'] as String,
          createdAt: map['createdAt'] as String,
          name: map['name'] as String,
        );
}
