import 'package:flutter/material.dart';

import 'presentation/characters/characters_page.dart';
import 'presentation/content/content_page.dart';
import 'presentation/home/home.dart';
import 'presentation/spells/spells_page.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      routes: {
        '/': (context) => const Home(),
        '/content': (context) => const ContentPage(),
        '/spells': (context) => const SpellsPage(),
        '/characters': (context) => const CharactersPage(),
      },
    );
  }
}
