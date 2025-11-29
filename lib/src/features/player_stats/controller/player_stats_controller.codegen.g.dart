// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_stats_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller for player stats business logic.

@ProviderFor(PlayerStatsController)
const playerStatsControllerProvider = PlayerStatsControllerProvider._();

/// Controller for player stats business logic.
final class PlayerStatsControllerProvider
    extends $AsyncNotifierProvider<PlayerStatsController, PlayerStatsModel> {
  /// Controller for player stats business logic.
  const PlayerStatsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'playerStatsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$playerStatsControllerHash();

  @$internal
  @override
  PlayerStatsController create() => PlayerStatsController();
}

String _$playerStatsControllerHash() =>
    r'49403f44dbc34868594e74aa6cbd6237a2227dd7';

/// Controller for player stats business logic.

abstract class _$PlayerStatsController
    extends $AsyncNotifier<PlayerStatsModel> {
  FutureOr<PlayerStatsModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<PlayerStatsModel>, PlayerStatsModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PlayerStatsModel>, PlayerStatsModel>,
              AsyncValue<PlayerStatsModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
