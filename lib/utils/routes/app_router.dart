import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes/utils/routes/guards/auth_guard.dart';
import 'package:flutter_routes/views/admin/users/user_list/user_detail/user_detail_view.dart';

import '../../views/admin/admin_main_view.dart';
import '../../views/admin/dashboard/dashboard_view.dart';
import '../../views/admin/users/messages/messages_view.dart';
import '../../views/admin/users/user_list/user_list_view.dart';
import '../../views/admin/users/users_view.dart';
import '../../views/auth/auth_main_view.dart';
import '../../views/auth/login/login_view.dart';
import '../../views/auth/signup/signup_view.dart';
import '../../views/unknown_view.dart';
import '../constants/app_routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        //AuthRoutes:
        AutoRoute(
          page: AuthMainRoute.page,
          path: AppRoutes.routeAuthMain,
          initial: true,
          children: [
            CustomRoute(
              page: LoginRoute.page,
              path: AppRoutes.routeAuthLogin,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
              page: SignupRoute.page,
              path: AppRoutes.routeAuthSignUp,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),

        //Admin Routes
        AutoRoute(
          page: AdminMainRoute.page,
          path: AppRoutes.routeAdminMain,
          guards: [
            AuthGuard(),
          ],
          children: [
            CustomRoute(
              page: DashboardRoute.page,
              path: AppRoutes.routeAdminDashboard,
              initial: true,
              transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
            CustomRoute(
                page: UsersRoute.page,
                path: AppRoutes.routeAdminUsers,
                transitionsBuilder: TransitionsBuilders.fadeIn,
                children: [
                  AutoRoute(
                    page: UserListRoute.page,
                    path: AppRoutes.routeAdminUserList,
                    initial: true,
                  ),
                  AutoRoute(
                    page: MessagesRoute.page,
                    path: AppRoutes.routeAdminMessages,
                  ),
                ]),
          ],
        ),

        AutoRoute(
          page: UserDetailRoute.page,
          path: AppRoutes.routeAdminUserDetail,
          fullscreenDialog: true,
        ),

        AutoRoute(
          page: UnknownRoute.page,
          path: '*',
        ),
      ];
}

/// Auth
///   -Login
///   -SignUp
/// Admin
///   -Dashboard
///   -Users
///     - UserList
///     - Messages
/// 
