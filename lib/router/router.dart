import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:four/module/user/user_view.dart';
import 'package:four/module/user_list/user_list_view.dart';

part 'router.gr.dart';

const routes = <AutoRoute>[
  AutoRoute(
    page: UserPage,
  ),
  AutoRoute(
    page: UserListPage,
    initial: true,
  )
];

@MaterialAutoRouter(
  routes: routes,
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {}
