import 'package:flutter/material.dart';

import '../../../domain/entities/character.dart';
import '../../../domain/entities/house.dart';
import 'character_card.dart';
import 'title_sliver.dart';

class CharactersList extends StatelessWidget {
  final Map<House, List<Character>> charactersByHouse;

  const CharactersList({
    super.key,
    required this.charactersByHouse,
  });

  @override
  Widget build(BuildContext context) {
    final gryffindorCharacters = charactersByHouse[House.gryffindor] ?? [];
    final hufflepuffCharacters = charactersByHouse[House.hufflepuff] ?? [];
    final ravenclawCharacters = charactersByHouse[House.ravenclaw] ?? [];
    final slytherinCharacters = charactersByHouse[House.slytherin] ?? [];
    final otherCharacters = charactersByHouse[House.unknown] ?? [];

    return CustomScrollView(
      clipBehavior: Clip.none,
      slivers: [
        const TitleSliver(title: 'Grifinória'),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            mainAxisExtent: 156,
          ),
          itemCount: gryffindorCharacters.length,
          itemBuilder: (context, index) {
            final character = gryffindorCharacters[index];

            return CharacterCard(
              key: ValueKey(character.id),
              character: character,
            );
          },
        ),
        const TitleSliver(title: 'Sonserina'),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            mainAxisExtent: 156,
          ),
          itemCount: slytherinCharacters.length,
          itemBuilder: (context, index) {
            final character = slytherinCharacters[index];

            return CharacterCard(
              key: ValueKey(character.id),
              character: character,
            );
          },
        ),
        const TitleSliver(title: 'Lufa-Lufa'),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            mainAxisExtent: 156,
          ),
          itemCount: hufflepuffCharacters.length,
          itemBuilder: (context, index) {
            final character = hufflepuffCharacters[index];

            return CharacterCard(
              key: ValueKey(character.id),
              character: character,
            );
          },
        ),
        const TitleSliver(title: 'Corvinal'),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            mainAxisExtent: 156,
          ),
          itemCount: ravenclawCharacters.length,
          itemBuilder: (context, index) {
            final character = ravenclawCharacters[index];

            return CharacterCard(
              key: ValueKey(character.id),
              character: character,
            );
          },
        ),
        const TitleSliver(title: 'Outros'),
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 12,
            mainAxisExtent: 156,
          ),
          itemCount: otherCharacters.length,
          itemBuilder: (context, index) {
            final character = otherCharacters[index];

            return CharacterCard(
              key: ValueKey(character.id),
              character: character,
            );
          },
        ),
      ],
    );
  }
}
