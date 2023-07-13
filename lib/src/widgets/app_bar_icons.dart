import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svgs/icons.svg',
      height: 108,
    );
  }
}
