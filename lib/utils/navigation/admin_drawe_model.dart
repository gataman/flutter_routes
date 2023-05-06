// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_routes/utils/constants/app_routes.dart';

class AdminDrawerModel {
  final String title;
  final IconData icon;
  final String route;

  AdminDrawerModel({
    required this.title,
    required this.icon,
    required this.route,
  });

  static List<AdminDrawerModel> get drawerList => [
        AdminDrawerModel(
          title: 'Dashboard',
          icon: Icons.dashboard,
          route: AppRoutes.routeAdminDashboard,
        ),
        AdminDrawerModel(
          title: 'Users',
          icon: Icons.person,
          route: AppRoutes.routeAdminUsers,
        ),
      ];
}
