import 'package:equatable/equatable.dart';

class LocalTip extends Equatable {
  const LocalTip({
    required this.imgUrl,
    required this.title,
    required this.description,
    required this.id,
  });

  const LocalTip.empty()
      : this(
          id: '',
          imgUrl: '',
          title: '',
          description: '',
        );

  final String id;
  final String imgUrl;
  final String title;
  final String description;

  @override
  List<Object?> get props => [imgUrl, title, description];

  @override
  String toString() {
    return 'Tip {imgUrl: $imgUrl, title: $title, description: $description}';
  }
}
