import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.orange,
                  AppColors.white,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            padding: const EdgeInsets.all(24.0),
            child: DefaultTextStyle(
              style: GoogleFonts.jollyLodger().copyWith(
                fontSize: 16,
                height: 1.75,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 284),
                  const Text(
                    'Prezado(a) aluno(a),\nTemos o prazer de informar que Vossa Senhoria tem uma vaga na Escola de Magia e Bruxaria de Hogwarts.',
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Aproveite esse tempo enquanto as aulas não começam para conhecer  os seus colegas e também alguns feitiços.',
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Att, Escola de Magia e Bruxaria de Hogwarts',
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/content'),
                      child: const Text('Acessar conteúdo'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 212,
          child: SvgPicture.asset(
            'assets/svgs/invite.svg',
            height: 208,
          ),
        ),
        Positioned(
          top: 150,
          child: Image.asset(
            'assets/images/hogwarts.png',
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}
