// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_service.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Service for game business logic.

@ProviderFor(GameService)
const gameServiceProvider = GameServiceProvider._();

/// Service for game business logic.
final class GameServiceProvider
    extends $NotifierProvider<GameService, GameModel> {
  /// Service for game business logic.
  const GameServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameServiceHash();

  @$internal
  @override
  GameService create() => GameService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GameModel value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GameModel>(value),
    );
  }
}

String _$gameServiceHash() => r'e898c937b412d75110da8864dd26d760460c47ed';

/// Service for game business logic.

abstract class _$GameService extends $Notifier<GameModel> {
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
