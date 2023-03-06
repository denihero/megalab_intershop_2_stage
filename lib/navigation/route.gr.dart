// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'route.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    GateTypeScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const GateTypeScreen(),
      );
    },
    OurNewsScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OurNewsScreen(),
      );
    },
    OurServiceScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OurServiceScreen(),
      );
    },
    OurWorkScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const OurWorkScreen(),
      );
    },
    NewsDetailScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NewsDetailScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          GateTypeScreenRoute.name,
          path: '/gate-type-screen',
        ),
        RouteConfig(
          OurNewsScreenRoute.name,
          path: '/our-news-screen',
        ),
        RouteConfig(
          OurServiceScreenRoute.name,
          path: '/our-service-screen',
        ),
        RouteConfig(
          OurWorkScreenRoute.name,
          path: '/our-work-screen',
        ),
        RouteConfig(
          NewsDetailScreenRoute.name,
          path: '/news-detail-screen',
        ),
      ];
}

/// generated route for
/// [HomeScreen]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: '/',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [GateTypeScreen]
class GateTypeScreenRoute extends PageRouteInfo<void> {
  const GateTypeScreenRoute()
      : super(
          GateTypeScreenRoute.name,
          path: '/gate-type-screen',
        );

  static const String name = 'GateTypeScreenRoute';
}

/// generated route for
/// [OurNewsScreen]
class OurNewsScreenRoute extends PageRouteInfo<void> {
  const OurNewsScreenRoute()
      : super(
          OurNewsScreenRoute.name,
          path: '/our-news-screen',
        );

  static const String name = 'OurNewsScreenRoute';
}

/// generated route for
/// [OurServiceScreen]
class OurServiceScreenRoute extends PageRouteInfo<void> {
  const OurServiceScreenRoute()
      : super(
          OurServiceScreenRoute.name,
          path: '/our-service-screen',
        );

  static const String name = 'OurServiceScreenRoute';
}

/// generated route for
/// [OurWorkScreen]
class OurWorkScreenRoute extends PageRouteInfo<void> {
  const OurWorkScreenRoute()
      : super(
          OurWorkScreenRoute.name,
          path: '/our-work-screen',
        );

  static const String name = 'OurWorkScreenRoute';
}

/// generated route for
/// [NewsDetailScreen]
class NewsDetailScreenRoute extends PageRouteInfo<void> {
  const NewsDetailScreenRoute()
      : super(
          NewsDetailScreenRoute.name,
          path: '/news-detail-screen',
        );

  static const String name = 'NewsDetailScreenRoute';
}
