import 'package:flutter/material.dart';
import 'package:flutter_toolbox/features/welcome/headspace_welcome_screen.dart';
import 'package:flutter_toolbox/home_screen.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@TypedGoRoute<HomeRoute>(path: "/")
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<HeadspaceWelcomeRoute>(path: "/headspace/welcome")
class HeadspaceWelcomeRoute extends GoRouteData {
  const HeadspaceWelcomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const HeadspaceWelcomeScreen();
}
