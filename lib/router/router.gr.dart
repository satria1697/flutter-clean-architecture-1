// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    UserRoute.name: (routeData) {
      final args =
          routeData.argsAs<UserRouteArgs>(orElse: () => const UserRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserPage(key: args.key),
      );
    },
    UserListRoute.name: (routeData) {
      final args = routeData.argsAs<UserListRouteArgs>(
          orElse: () => const UserListRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserListPage(key: args.key),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          UserRoute.name,
          path: '/user-page',
        ),
        RouteConfig(
          UserListRoute.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [UserPage]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({Key? key})
      : super(
          UserRoute.name,
          path: '/user-page',
          args: UserRouteArgs(key: key),
        );

  static const String name = 'UserRoute';
}

class UserRouteArgs {
  const UserRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key}';
  }
}

/// generated route for
/// [UserListPage]
class UserListRoute extends PageRouteInfo<UserListRouteArgs> {
  UserListRoute({Key? key})
      : super(
          UserListRoute.name,
          path: '/',
          args: UserListRouteArgs(key: key),
        );

  static const String name = 'UserListRoute';
}

class UserListRouteArgs {
  const UserListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'UserListRouteArgs{key: $key}';
  }
}
