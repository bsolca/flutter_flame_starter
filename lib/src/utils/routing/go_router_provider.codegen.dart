import 'package:flutter/material.dart';
import 'package:flutter_flame_starter/src/screens/game_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.codegen.g.dart';

/// Provider for [GoRouter].
@riverpod
Raw<GoRouter> goRouter(Ref ref) {
  final rootNavigatorKey = GlobalKey<NavigatorState>();

  final goRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/game',
    routes: [
      GoRoute(
        path: '/game',
        name: 'game',
        builder: (context, state) => const GameScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Page not found: ${state.uri}'),
      ),
    ),
  );

  return goRouter;
}
