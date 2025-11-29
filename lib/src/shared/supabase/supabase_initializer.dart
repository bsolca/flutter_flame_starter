import 'package:flutter/foundation.dart';
import 'package:flutter_flame_starter/src/utils/log/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Initializes Supabase from compile-time environment variables.
///
/// Reads SUPABASE_URL and SUPABASE_ANON_KEY from --dart-define flags.
/// Returns true if initialization was successful, false otherwise.
Future<bool> initializeSupabase() async {
  // Initialize Supabase from compile-time environment variables
  var supabaseUrl = const String.fromEnvironment('SUPABASE_URL');
  const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  // For Android emulator, replace 127.0.0.1 with 10.0.2.2
  // Android emulator uses 10.0.2.2 to access host machine's localhost
  if (!kIsWeb &&
      defaultTargetPlatform == TargetPlatform.android &&
      supabaseUrl.contains('127.0.0.1')) {
    supabaseUrl = supabaseUrl.replaceAll('127.0.0.1', '10.0.2.2');
    logInfo('Using Android emulator localhost mapping: $supabaseUrl');
  }

  if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
    logError(
      'Environment variables can not be read or not set.',
      includeStackTrace: false,
    );
    logInfo(
      'SUPABASE_URL and/or SUPABASE_ANON_KEY are missing. '
      'Pass them via --dart-define. '
      'Refer to the README for more information.',
    );
    return false;
  }

  logInfo('Initializing Supabase with URL: $supabaseUrl');
  await Supabase.initialize(
    url: supabaseUrl,
    anonKey: supabaseAnonKey,
  );

  return true;
}
