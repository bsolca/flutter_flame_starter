// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supabase_client_provider.codegen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provides the Supabase client instance.

@ProviderFor(SupabaseClientProvider)
const supabaseClientProviderProvider = SupabaseClientProviderProvider._();

/// Provides the Supabase client instance.
final class SupabaseClientProviderProvider
    extends $NotifierProvider<SupabaseClientProvider, SupabaseClient> {
  /// Provides the Supabase client instance.
  const SupabaseClientProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'supabaseClientProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$supabaseClientProviderHash();

  @$internal
  @override
  SupabaseClientProvider create() => SupabaseClientProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SupabaseClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SupabaseClient>(value),
    );
  }
}

String _$supabaseClientProviderHash() =>
    r'ca2cc39f6ffff3d43035dd5a3be89082550b79e9';

/// Provides the Supabase client instance.

abstract class _$SupabaseClientProvider extends $Notifier<SupabaseClient> {
  SupabaseClient build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SupabaseClient, SupabaseClient>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SupabaseClient, SupabaseClient>,
              SupabaseClient,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
