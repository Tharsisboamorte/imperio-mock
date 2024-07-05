import 'package:imperio_mock/app/modules/home/domain/entities/tip.dart';
import 'package:imperio_mock/core/utils/typedef.dart';

class TipModel extends LocalTip {
  const TipModel({
    required super.imgUrl,
    required super.title,
    required super.description,
    required super.id,
  });

  const TipModel.empty()
      : this(
          id: '',
          imgUrl: '',
          title: '',
          description: '',
        );

  TipModel.fromMap(DataMap map)
      : super(
          id: map['id'] as String,
          title: map['title'] as String,
          imgUrl: map['image'] as String,
          description: map['description'] as String,
        );
}
