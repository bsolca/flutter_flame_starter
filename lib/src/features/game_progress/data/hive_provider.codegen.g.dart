// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_provider.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The provider that provides the game progress box.

@ProviderFor(hiveGameProgressBox)
const hiveGameProgressBoxProvider = HiveGameProgressBoxProvider._();

/// The provider that provides the game progress box.

final class HiveGameProgressBoxProvider
    extends $FunctionalProvider<Box<String>, Box<String>, Box<String>>
    with $Provider<Box<String>> {
  /// The provider that provides the game progress box.
  const HiveGameProgressBoxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hiveGameProgressBoxProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hiveGameProgressBoxHash();

  @$internal
  @override
  $ProviderElement<Box<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Box<String> create(Ref ref) {
    return hiveGameProgressBox(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Box<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Box<String>>(value),
    );
  }
}

String _$hiveGameProgressBoxHash() =>
    r'0687d43634b3b0a8eaeea02e528c6a654a838a95';
