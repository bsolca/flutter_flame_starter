// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller for game business logic.

@ProviderFor(GameController)
const gameControllerProvider = GameControllerProvider._();

/// Controller for game business logic.
final class GameControllerProvider
    extends $NotifierProvider<GameController, GameModel> {
  /// Controller for game business logic.
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
  Override overrideWithValue(GameModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameModel>(value),
    );
  }
}

String _$gameControllerHash() => r'1044fd2b01614984e5676ff5f30d6caff11e1928';

/// Controller for game business logic.

abstract class _$GameController extends $Notifier<GameModel> {
  GameModel build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<GameModel, GameModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<GameModel, GameModel>,
              GameModel,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
