// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_settings_repository.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for game settings repository.

@ProviderFor(gameSettingsRepository)
const gameSettingsRepositoryProvider = GameSettingsRepositoryProvider._();

/// Provider for game settings repository.

final class GameSettingsRepositoryProvider
    extends
        $FunctionalProvider<
          GameSettingsRepository,
          GameSettingsRepository,
          GameSettingsRepository
        >
    with $Provider<GameSettingsRepository> {
  /// Provider for game settings repository.
  const GameSettingsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameSettingsRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameSettingsRepositoryHash();

  @$internal
  @override
  $ProviderElement<GameSettingsRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GameSettingsRepository create(Ref ref) {
    return gameSettingsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameSettingsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameSettingsRepository>(value),
    );
  }
}

String _$gameSettingsRepositoryHash() =>
    r'bb4cbbf3e23ab2b850e32bdd4caf5e2f38a385a4';
