import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_routes.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({
    super.key,
    required this.isLogin,
    required this.onPressed,
  });

  final bool isLogin;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            width: 350,
            height: 300,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(isLogin ? 'Login Page' : 'Sign up Page'),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: onPressed,
                      child: Text(isLogin ? 'Login' : 'Sign up'),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () {
                        final route = isLogin ? AppRoutes.routeAuthSignUp : AppRoutes.routeAuthLogin;
                        context.router.pushNamed(route);
                      },
                      child: Text(isLogin ? 'Sign up' : 'Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
