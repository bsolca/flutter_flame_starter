// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller for game state management.

@ProviderFor(GameController)
const gameControllerProvider = GameControllerProvider._();

/// Controller for game state management.
final class GameControllerProvider
    extends $NotifierProvider<GameController, GameService> {
  /// Controller for game state management.
  const GameControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameControllerHash();

  @$internal
  @override
  GameController create() => GameController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameService>(value),
    );
  }
}

String _$gameControllerHash() => r'2a05b0f4296c056d798ad446a77b3d5eb757f862';

/// Controller for game state management.

abstract class _$GameController extends $Notifier<GameService> {
  GameService build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GameService, GameService>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GameService, GameService>,
              GameService,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
