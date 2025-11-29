import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/generated/i18n/app_localizations.dart';
import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:flutter_flame_starter/src/utils/localization/app_local.codegen.dart';
import 'package:flutter_flame_starter/src/utils/localization/get_locale.codegen.dart';
import 'package:flutter_flame_starter/src/utils/routing/go_router_provider.codegen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// App starting point.
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      restorationScopeId: EzConstString.mainRestorationId,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
      ),
      onGenerateTitle: (BuildContext context) {
        final appLocal = ref.read(appLocalProvider);
        return appLocal.appTitle;
      },
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback:
          (
            deviceLocale,
            supportedLocales,
          ) {
            return ref
                .read(getLocaleProvider.notifier)
                .localeResolutionCallback(
                  deviceLocale,
                  supportedLocales,
                );
          },
      routerConfig: ref.watch(goRouterProvider),
    );
  }
}
