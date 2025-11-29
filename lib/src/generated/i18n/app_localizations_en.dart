// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flame Game Starter';

  @override
  String get gameTitle => 'Game';

  @override
  String get startGame => 'Start Game';

  @override
  String get pauseGame => 'Pause';

  @override
  String get resumeGame => 'Resume';

  @override
  String get gameOver => 'Game Over';

  @override
  String get score => 'Score';

  @override
  String get language => 'Language';

  @override
  String get english => 'English';

  @override
  String get french => 'French';
}
