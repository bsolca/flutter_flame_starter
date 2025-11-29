// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_repository.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for player stats repository.

@ProviderFor(playerStatsRepository)
const playerStatsRepositoryProvider = PlayerStatsRepositoryProvider._();

/// Provider for player stats repository.

final class PlayerStatsRepositoryProvider
    extends
        $FunctionalProvider<
          PlayerStatsRepository,
          PlayerStatsRepository,
          PlayerStatsRepository
        >
    with $Provider<PlayerStatsRepository> {
  /// Provider for player stats repository.
  const PlayerStatsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerStatsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerStatsRepositoryHash();

  @$internal
  @override
  $ProviderElement<PlayerStatsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PlayerStatsRepository create(Ref ref) {
    return playerStatsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PlayerStatsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PlayerStatsRepository>(value),
    );
  }
}

String _$playerStatsRepositoryHash() =>
    r'7fbf720f05ebd9d903861b20f92312d5ffd0cc94';
