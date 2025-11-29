// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_progress_repository.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for game progress repository.

@ProviderFor(gameProgressRepository)
const gameProgressRepositoryProvider = GameProgressRepositoryProvider._();

/// Provider for game progress repository.

final class GameProgressRepositoryProvider
    extends
        $FunctionalProvider<
          GameProgressRepository,
          GameProgressRepository,
          GameProgressRepository
        >
    with $Provider<GameProgressRepository> {
  /// Provider for game progress repository.
  const GameProgressRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameProgressRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameProgressRepositoryHash();

  @$internal
  @override
  $ProviderElement<GameProgressRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GameProgressRepository create(Ref ref) {
    return gameProgressRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameProgressRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameProgressRepository>(value),
    );
  }
}

String _$gameProgressRepositoryHash() =>
    r'3a47dfd6cf897ea7c74b355b74edd65af9f6cdc0';
