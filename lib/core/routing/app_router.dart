import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:persona_travel/features/shared/persona_travel_map/4_presentation/routes/persona_travel_map_routes.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: PersonaTravelMapRoutes.spotListPath,
  routes: PersonaTravelMapRoutes.routes,
);
