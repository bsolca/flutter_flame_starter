// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_provider.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// The provider that provides the high scores box.

@ProviderFor(hiveHighScoresBox)
const hiveHighScoresBoxProvider = HiveHighScoresBoxProvider._();

/// The provider that provides the high scores box.

final class HiveHighScoresBoxProvider
    extends $FunctionalProvider<Box<String>, Box<String>, Box<String>>
    with $Provider<Box<String>> {
  /// The provider that provides the high scores box.
  const HiveHighScoresBoxProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'hiveHighScoresBoxProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$hiveHighScoresBoxHash();

  @$internal
  @override
  $ProviderElement<Box<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Box<String> create(Ref ref) {
    return hiveHighScoresBox(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Box<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Box<String>>(value),
    );
  }
}

String _$hiveHighScoresBoxHash() => r'9264a49a613262fdfdaa94b0c53d775ac0d8b6b3';
