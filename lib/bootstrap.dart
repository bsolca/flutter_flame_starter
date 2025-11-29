import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:flutter_flame_starter/src/utils/log/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quick_log/quick_log.dart';

/// Bootstraps the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  // Ensure that the app is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Setup logging
  Logger.writer = const ConsolePrinter(
    exceptTags: [],
  );

  logInfo('App bootstrap started');

  // Initialize Hive
  await Hive.initFlutter();
  logInfo('Hive initialized');

  // Open all Hive boxes
  await Hive.openBox<String>(EzConstString.hiveHighScores);
  await Hive.openBox<String>(EzConstString.hivePlayerStats);
  await Hive.openBox<String>(EzConstString.hiveGameSettings);
  await Hive.openBox<String>(EzConstString.hiveGameProgress);
  logInfo('Hive boxes opened');

  // TODO Setup supabase initialization when needed and remove the comment below
  // Initialize Supabase
  // final supabaseInitialized = await initializeSupabase();
  // if (!supabaseInitialized) {
  //   return;
  // }

  // Run the app
  runApp(
    ProviderScope(
      child: await builder(),
    ),
  );
}
