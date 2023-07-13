import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';
import '../../widgets/app_bar_icons.dart';
import 'widgets/content_card.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Conteúdos',
        subtitle:
            'Você pode conhecer seus colegas e também conhecer previamente alguns feitiços.',
        trailing: AppBarIcons(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 32),
            ContentCard(
              image: 'assets/images/students.png',
              title: 'Alunos e professores',
              description:
                  'Aqui estão todos os alunos,  professores e criaturas que você encontrará na escola.',
              onPressed: () => Navigator.of(context).pushNamed('/characters'),
            ),
            const SizedBox(height: 16),
            ContentCard(
              image: 'assets/images/spell.png',
              title: 'Feitiços',
              description:
                  'Aqui estão os principais feitiços que serão aprendidos na escola.',
              onPressed: () => Navigator.of(context).pushNamed('/spells'),
            ),
          ],
        ),
      ),
    );
  }
}
