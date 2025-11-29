import 'package:flutter_flame_starter/bootstrap.dart';
import 'package:flutter_flame_starter/src/features/app.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
