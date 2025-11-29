// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_score_repository.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for high score repository.

@ProviderFor(highScoreRepository)
const highScoreRepositoryProvider = HighScoreRepositoryProvider._();

/// Provider for high score repository.

final class HighScoreRepositoryProvider
    extends
        $FunctionalProvider<
          HighScoreRepository,
          HighScoreRepository,
          HighScoreRepository
        >
    with $Provider<HighScoreRepository> {
  /// Provider for high score repository.
  const HighScoreRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'highScoreRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$highScoreRepositoryHash();

  @$internal
  @override
  $ProviderElement<HighScoreRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HighScoreRepository create(Ref ref) {
    return highScoreRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HighScoreRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HighScoreRepository>(value),
    );
  }
}

String _$highScoreRepositoryHash() =>
    r'38aec00ee35861e604cef311acb008782f44d969';
