import 'package:flutter/material.dart';
import 'package:flutter_routes/views/admin/admin_main_view.dart';

class AppMainView extends StatelessWidget {
  const AppMainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdminMainView(),
    );
  }
}
