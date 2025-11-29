// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_local.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Providing the app localizations.

@ProviderFor(AppLocal)
const appLocalProvider = AppLocalProvider._();

/// Providing the app localizations.
final class AppLocalProvider
    extends $NotifierProvider<AppLocal, AppLocalizations> {
  /// Providing the app localizations.
  const AppLocalProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLocalProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLocalHash();

  @$internal
  @override
  AppLocal create() => AppLocal();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppLocalizations value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppLocalizations>(value),
    );
  }
}

String _$appLocalHash() => r'5ab3bef05d9dc1c40c9a70be2bae63520b7c0bb6';

/// Providing the app localizations.

abstract class _$AppLocal extends $Notifier<AppLocalizations> {
  AppLocalizations build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AppLocalizations, AppLocalizations>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppLocalizations, AppLocalizations>,
              AppLocalizations,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
