import 'package:dio/dio.dart';

void main() async {
  final data = await Dio().get('https://hp-api.onrender.com/api/characters');
  final species = [];

  for (final character in data.data) {
    if (!species.contains(character['house'])) {
      species.add(character['house']);
    }
    if ((character['house'] == '' || character['house'] == null)) {
      print(character);
    }
  }

  print(species);
}
