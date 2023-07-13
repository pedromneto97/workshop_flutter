import 'package:flutter/widgets.dart';

import 'src/app.dart';
import 'src/setup.dart';

void main() async {
  await setup();

  runApp(const App());
}
