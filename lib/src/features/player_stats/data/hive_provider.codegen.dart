import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hive_provider.codegen.g.dart';

/// The provider that provides the player stats box.
@Riverpod(keepAlive: true)
Box<String> hivePlayerStatsBox(Ref ref) {
  return Hive.box<String>(EzConstString.hivePlayerStats);
}
