// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_progress_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller for game progress business logic.

@ProviderFor(GameProgressController)
const gameProgressControllerProvider = GameProgressControllerProvider._();

/// Controller for game progress business logic.
final class GameProgressControllerProvider
    extends $AsyncNotifierProvider<GameProgressController, GameProgressModel?> {
  /// Controller for game progress business logic.
  const GameProgressControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gameProgressControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gameProgressControllerHash();

  @$internal
  @override
  GameProgressController create() => GameProgressController();
}

String _$gameProgressControllerHash() =>
    r'd6e4cada489afca7c67f6844e93e141299d6f708';

/// Controller for game progress business logic.

abstract class _$GameProgressController
    extends $AsyncNotifier<GameProgressModel?> {
  FutureOr<GameProgressModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<GameProgressModel?>, GameProgressModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GameProgressModel?>, GameProgressModel?>,
              AsyncValue<GameProgressModel?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
