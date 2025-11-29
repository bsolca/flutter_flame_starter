// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Controller for game settings business logic.

@ProviderFor(SettingsController)
const settingsControllerProvider = SettingsControllerProvider._();

/// Controller for game settings business logic.
final class SettingsControllerProvider
    extends $AsyncNotifierProvider<SettingsController, GameSettingsModel> {
  /// Controller for game settings business logic.
  const SettingsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsControllerHash();

  @$internal
  @override
  SettingsController create() => SettingsController();
}

String _$settingsControllerHash() =>
    r'f345da7a498c0e5a1d69bed77cb7ef0286013052';

/// Controller for game settings business logic.

abstract class _$SettingsController extends $AsyncNotifier<GameSettingsModel> {
  FutureOr<GameSettingsModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<GameSettingsModel>, GameSettingsModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GameSettingsModel>, GameSettingsModel>,
              AsyncValue<GameSettingsModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
