// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_provider.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The provider that provides the game settings box.

@ProviderFor(hiveGameSettingsBox)
const hiveGameSettingsBoxProvider = HiveGameSettingsBoxProvider._();

/// The provider that provides the game settings box.

final class HiveGameSettingsBoxProvider
    extends $FunctionalProvider<Box<String>, Box<String>, Box<String>>
    with $Provider<Box<String>> {
  /// The provider that provides the game settings box.
  const HiveGameSettingsBoxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hiveGameSettingsBoxProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hiveGameSettingsBoxHash();

  @$internal
  @override
  $ProviderElement<Box<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Box<String> create(Ref ref) {
    return hiveGameSettingsBox(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Box<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Box<String>>(value),
    );
  }
}

String _$hiveGameSettingsBoxHash() =>
    r'b5b6c771a501531e4084e6fbaf01f5ae56cda774';
