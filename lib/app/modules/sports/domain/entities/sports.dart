import 'package:equatable/equatable.dart';

class Sports extends Equatable {
  const Sports({required this.name, required this.image, required this.id});

  const Sports.empty()
      : this(
          id: '',
          name: '',
          image: '',
        );

  final String name;
  final String image;
  final String id;

  @override
  List<Object?> get props => [];
}
