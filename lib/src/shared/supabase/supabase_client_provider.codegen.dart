import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_client_provider.codegen.g.dart';

/// Provides the Supabase client instance.
@Riverpod(keepAlive: true)
class SupabaseClientProvider extends _$SupabaseClientProvider {
  @override
  SupabaseClient build() {
    return Supabase.instance.client;
  }
}
