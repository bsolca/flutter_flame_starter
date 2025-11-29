import 'package:flutter_flame_starter/src/utils/constants/ez_const_string.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hive_provider.codegen.g.dart';

/// The provider that provides the game progress box.
@Riverpod(keepAlive: true)
Box<String> hiveGameProgressBox(Ref ref) {
  return Hive.box<String>(EzConstString.hiveGameProgress);
}
