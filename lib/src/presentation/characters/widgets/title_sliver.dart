import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/theme.dart';

class TitleSliver extends StatelessWidget {
  final String title;

  const TitleSliver({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          title,
          style: GoogleFonts.jollyLodger(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            height: 1.11,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}
