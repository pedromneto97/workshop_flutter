import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/core.dart';
import '../../domain/entities/wand.dart';
import '../../domain/entities/wood.dart';

part 'wand_model.g.dart';

@JsonSerializable(
  createToJson: false,
)
class WandModel {
  final String wood;
  final String core;
  final double length;

  const WandModel({
    this.wood = '',
    this.core = '',
    this.length = 0,
  });

  factory WandModel.fromJson(Map<String, dynamic> json) =>
      _$WandModelFromJson(json);

  bool get _isEmpty => wood.isEmpty;

  Wand? toEntity() => _isEmpty
      ? null
      : Wand(
          wood: Wood.values.firstWhere(
            (element) => element.name == wood,
          ),
          core: _toCore(),
          length: length,
        );

  Core? _toCore() => {
        'phoenix feather': Core.phoenixFeather,
        'unicorn hair': Core.unicornHair,
        'dragon heartstring': Core.dragonHeartstring,
        'unicorn tail-hair': Core.unicornTailHair,
      }[core];
}
