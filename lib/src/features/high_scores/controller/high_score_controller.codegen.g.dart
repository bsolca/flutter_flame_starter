// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_score_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller for high score business logic.

@ProviderFor(HighScoreController)
const highScoreControllerProvider = HighScoreControllerProvider._();

/// Controller for high score business logic.
final class HighScoreControllerProvider
    extends $AsyncNotifierProvider<HighScoreController, List<HighScoreModel>> {
  /// Controller for high score business logic.
  const HighScoreControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'highScoreControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$highScoreControllerHash();

  @$internal
  @override
  HighScoreController create() => HighScoreController();
}

String _$highScoreControllerHash() =>
    r'5ec6d183b015e04ef748ea51059526f35b09716d';

/// Controller for high score business logic.

abstract class _$HighScoreController
    extends $AsyncNotifier<List<HighScoreModel>> {
  FutureOr<List<HighScoreModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<HighScoreModel>>, List<HighScoreModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<HighScoreModel>>,
                List<HighScoreModel>
              >,
              AsyncValue<List<HighScoreModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
