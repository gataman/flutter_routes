import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes/utils/navigation/admin_drawer_menu.dart';

@RoutePage()
class AdminMainView extends StatelessWidget {
  const AdminMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const AutoRouter(),
      drawer: const AdminDrawerMenu(),
    );
  }
}
