import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../domain/data/api_provider.dart';
import '../../domain/entities/spell.dart';
import '../../theme/theme.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_bar_icons.dart';

class SpellsPage extends StatelessWidget {
  const SpellsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Feitiços',
        subtitle:
            'Os feitiços que estão aqui serão aprendidos durante os sete anos em Hogwarts.',
        trailing: AppBarIcons(),
      ),
      body: FutureBuilder<List<Spell>>(
        future: GetIt.I.get<ApiProvider>().getSpells(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: AppColors.yellow,
              ),
            );
          }
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final spell = snapshot.data![index];
                return ExpansionTile(
                  title: Text(
                    spell.name,
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      height: 1.43,
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
                  collapsedShape: const Border(
                    top: BorderSide(
                      color: AppColors.orange,
                    ),
                  ),
                  collapsedIconColor: AppColors.orange,
                  iconColor: AppColors.orange,
                  shape: const Border(
                    top: BorderSide(
                      color: AppColors.orange,
                    ),
                  ),
                  children: [
                    Container(
                      color: AppColors.white,
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        spell.description,
                        style: GoogleFonts.openSans(
                          fontSize: 14,
                          height: 1.29,
                          color: AppColors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }

          return Center(
            child: Text(
              'Erro ao carregar os feitiços',
              style: Theme.of(context).textTheme.headline6,
            ),
          );
        },
      ),
    );
  }
}
