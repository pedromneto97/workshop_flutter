import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme.dart';

class ContentCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final VoidCallback onPressed;

  const ContentCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Color(0x1f000000),
            offset: Offset(0, 4),
            blurRadius: 20,
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Image.asset(
            image,
            fit: BoxFit.fitWidth,
            width: 92,
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: GoogleFonts.openSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                    height: 1.43,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: GoogleFonts.openSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: onPressed,
                  child: const Text('Acessar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
