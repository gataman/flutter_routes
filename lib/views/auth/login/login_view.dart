import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes/utils/constants/app_routes.dart';

import '../components/auth_card.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthCard(
      isLogin: true,
      onPressed: () {
        context.router.replaceNamed(AppRoutes.routeAdminMain);
      },
    );
  }
}
