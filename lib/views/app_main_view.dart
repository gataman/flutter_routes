import 'package:flutter/material.dart';
import 'package:flutter_routes/utils/routes/app_router.dart';
import 'package:flutter_routes/views/admin/admin_main_view.dart';

class AppMainView extends StatelessWidget {
  AppMainView({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}
