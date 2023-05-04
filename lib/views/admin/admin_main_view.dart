import 'package:flutter/material.dart';
import 'users/users_view.dart';

class AdminMainView extends StatelessWidget {
  const AdminMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: UsersView(),
    );
  }
}
