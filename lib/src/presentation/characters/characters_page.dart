import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/theme.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/app_bar_icons.dart';
import 'cubit/get_characters_cubit.dart';
import 'widgets/characters_list.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetCharactersCubit>(
      create: (context) => GetIt.I.get<GetCharactersCubit>()..getCharacters(),
      child: Scaffold(
        appBar: const CustomAppBar(
          title: 'Alunos e professores',
          subtitle:
              'Esses são os alunos, professores e criaturas que você irá encontrar estudando aqui em Hogwarts.',
          trailing: AppBarIcons(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BlocBuilder<GetCharactersCubit, GetCharactersState>(
            builder: (context, state) {
              Widget child;
              if (state is GetCharactersError) {
                child = Center(
                  child: Text(
                    'Erro ao carregar os personagens',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      height: 1.375,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                );
              } else if (state is GetCharactersLoaded) {
                child = CharactersList(charactersByHouse: state.characters);
              } else {
                child = const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.orange,
                  ),
                );
              }

              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
