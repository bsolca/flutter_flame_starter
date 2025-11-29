import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/utils/log/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  // Run the app
  runApp(
    ProviderScope(
      child: await builder(),
    ),
  );
}
