import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../domain/entities/character.dart';
import '../../../theme/theme.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  const CharacterCard({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1f000000),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.network(
            character.image,
            fit: BoxFit.fitHeight,
            height: 64,
            width: 64,
            errorBuilder: (context, _, __) => const Icon(
              Icons.image_not_supported_outlined,
              size: 64,
            ),
            loadingBuilder: (context, child, loadingProgress) =>
                loadingProgress != null
                    ? CircularProgressIndicator(
                        color: AppColors.orange,
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      )
                    : child,
          ),
          const SizedBox(height: 8),
          Text(
            character.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(
              fontSize: 16,
              height: 1.375,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
