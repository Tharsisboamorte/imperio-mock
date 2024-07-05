import 'package:equatable/equatable.dart';

class Championships extends Equatable {
  const Championships({
    required this.createdAt,
    required this.name,
    required this.image,
    required this.id,
  });

  const Championships.empty()
      : this(
          id: '',
          image: '',
          name: '',
          createdAt: '',
        );

  final String createdAt;
  final String name;
  final String image;
  final String id;

  @override
  List<Object?> get props => [createdAt, name, image, id];

  @override
  String toString() {
    return 'Tip {image: $image, name: $name, createdAt: $createdAt}';
  }
}
