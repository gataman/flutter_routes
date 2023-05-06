// ignore_for_file: dead_code

import 'package:auto_route/auto_route.dart';
import 'package:flutter_routes/utils/constants/app_routes.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isAdmin = true;
    if (isAdmin) {
      resolver.next();
    } else {
      router.replaceNamed(AppRoutes.routeAuthMain);
    }
  }
}
