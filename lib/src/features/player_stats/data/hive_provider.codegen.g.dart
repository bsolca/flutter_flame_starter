// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_provider.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The provider that provides the player stats box.

@ProviderFor(hivePlayerStatsBox)
const hivePlayerStatsBoxProvider = HivePlayerStatsBoxProvider._();

/// The provider that provides the player stats box.

final class HivePlayerStatsBoxProvider
    extends $FunctionalProvider<Box<String>, Box<String>, Box<String>>
    with $Provider<Box<String>> {
  /// The provider that provides the player stats box.
  const HivePlayerStatsBoxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hivePlayerStatsBoxProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hivePlayerStatsBoxHash();

  @$internal
  @override
  $ProviderElement<Box<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Box<String> create(Ref ref) {
    return hivePlayerStatsBox(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Box<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Box<String>>(value),
    );
  }
}

String _$hivePlayerStatsBoxHash() =>
    r'ef05f6ee5f5217d41d2b13c9b2b670c5e103b19d';
