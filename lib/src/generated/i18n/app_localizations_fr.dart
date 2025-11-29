// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Démarreur de Jeu Flame';

  @override
  String get gameTitle => 'Jeu';

  @override
  String get startGame => 'Démarrer le Jeu';

  @override
  String get pauseGame => 'Pause';

  @override
  String get resumeGame => 'Reprendre';

  @override
  String get gameOver => 'Fin de Partie';

  @override
  String get score => 'Score';

  @override
  String get language => 'Langue';

  @override
  String get english => 'Anglais';

  @override
  String get french => 'Français';
}
