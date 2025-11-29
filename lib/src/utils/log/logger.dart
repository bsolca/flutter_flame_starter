import 'package:quick_log/quick_log.dart';

/// Logs a build.
void logBuild(String name) {
  const Logger('🏗️', 'build').debug('$name build');
}

/// Logs an action.
void logAction(String action) {
  const Logger('🚀', 'action').info(action);
}

/// Logs errors.
void logError(String reason, {bool includeStackTrace = true}) {
  const Logger('🚨', 'error').error(
    reason,
    includeStackTrace: includeStackTrace,
  );
}

/// Log information.
void logInfo(String info) {
  const Logger('ℹ️', 'info').info(info);
}
