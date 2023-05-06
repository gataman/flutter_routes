import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../components/auth_card.dart';

@RoutePage()
class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthCard(
      isLogin: false,
      onPressed: () {},
    );
  }
}
