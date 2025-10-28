import 'package:go_router/go_router.dart';
import 'package:persona_travel/features/shared/persona_travel_map/4_presentation/2_pages/spot_list_page.dart';

class PersonaTravelMapRoutes {
  const PersonaTravelMapRoutes._();

  static const String spotListPath = '/';
  static const String spotListName = 'spot-list';

  static final List<RouteBase> routes = <RouteBase>[
    GoRoute(
      path: spotListPath,
      name: spotListName,
      builder: (context, state) => const SpotListPage(),
    ),
  ];
}
