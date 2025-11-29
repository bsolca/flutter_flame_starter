import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:flutter_flame_starter/src/utils/log/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_locale.codegen.g.dart';

/// The provider that provides the locale.
@Riverpod(keepAlive: true)
class GetLocale extends _$GetLocale {
  static const _defaultLocale = 'en';

  @override
  Raw<Locale> build() {
    return const Locale(_defaultLocale);
  }

  /// Set the locale.
  void setLanguageCode(String languageCode) {
    logInfo('Locale changed to $languageCode');
    state = Locale(languageCode);
  }

  /// Resolve the locale for the MaterialApp.
  Locale? localeResolutionCallback(
    Locale? deviceLocale,
    Iterable<Locale> supportedLocales,
  ) {
    final localDeviceLocale = deviceLocale;

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (localDeviceLocale != null) {
        for (final locale in supportedLocales) {
          if (locale.languageCode == localDeviceLocale.languageCode) {
            state = Locale(localDeviceLocale.languageCode);
            return;
          }
        }
      }
      state = const Locale(_defaultLocale);
    });

    Locale returnAndSetState(String languageCode) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        state = Locale(languageCode);
      });
      return Locale(languageCode);
    }

    if (localDeviceLocale == null) {
      return returnAndSetState(_defaultLocale);
    }

    for (final locale in supportedLocales) {
      if (locale.languageCode == localDeviceLocale.languageCode) {
        return returnAndSetState(localDeviceLocale.languageCode);
      }
    }

    return returnAndSetState(_defaultLocale);
  }
}
