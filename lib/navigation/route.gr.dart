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
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
        transitionsBuilder: TransitionsBuilders.slideRightWithFade,
        opaque: true,
        barrierDismissible: false,
      );
    },
    GateTypeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<GateTypeScreenRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: GateTypeScreen(
          key: args.key,
          gateType: args.gateType,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OurNewsScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OurNewsScreen(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OurServiceScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OurServiceScreen(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    OurWorkScreenRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const OurWorkScreen(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    NewsDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailScreenRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: NewsDetailScreen(
          key: args.key,
          id: args.id,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
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
class GateTypeScreenRoute extends PageRouteInfo<GateTypeScreenRouteArgs> {
  GateTypeScreenRoute({
    Key? key,
    required OurServiceModel gateType,
  }) : super(
          GateTypeScreenRoute.name,
          path: '/gate-type-screen',
          args: GateTypeScreenRouteArgs(
            key: key,
            gateType: gateType,
          ),
        );

  static const String name = 'GateTypeScreenRoute';
}

class GateTypeScreenRouteArgs {
  const GateTypeScreenRouteArgs({
    this.key,
    required this.gateType,
  });

  final Key? key;

  final OurServiceModel gateType;

  @override
  String toString() {
    return 'GateTypeScreenRouteArgs{key: $key, gateType: $gateType}';
  }
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
class NewsDetailScreenRoute extends PageRouteInfo<NewsDetailScreenRouteArgs> {
  NewsDetailScreenRoute({
    Key? key,
    required int id,
  }) : super(
          NewsDetailScreenRoute.name,
          path: '/news-detail-screen',
          args: NewsDetailScreenRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'NewsDetailScreenRoute';
}

class NewsDetailScreenRouteArgs {
  const NewsDetailScreenRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'NewsDetailScreenRouteArgs{key: $key, id: $id}';
  }
}
