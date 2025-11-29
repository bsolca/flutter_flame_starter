// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_locale.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The provider that provides the locale.

@ProviderFor(GetLocale)
const getLocaleProvider = GetLocaleProvider._();

/// The provider that provides the locale.
final class GetLocaleProvider
    extends $NotifierProvider<GetLocale, Raw<Locale>> {
  /// The provider that provides the locale.
  const GetLocaleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLocaleProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLocaleHash();

  @$internal
  @override
  GetLocale create() => GetLocale();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<Locale> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<Locale>>(value),
    );
  }
}

String _$getLocaleHash() => r'ed1f4fddf1b46aacc14d4aa1f8ce6d431a561b94';

/// The provider that provides the locale.

abstract class _$GetLocale extends $Notifier<Raw<Locale>> {
  Raw<Locale> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Raw<Locale>, Raw<Locale>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<Raw<Locale>, Raw<Locale>>,
              Raw<Locale>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
