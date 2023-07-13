import 'core.dart';
import 'wood.dart';

class Wand {
  final Wood wood;
  final Core? core;
  final double length;

  const Wand({
    required this.wood,
    required this.core,
    required this.length,
  });
}
