import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserDetailView extends StatelessWidget {
  const UserDetailView({super.key, @PathParam('userId') required this.userId});
  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('User Detail $userId'),
    );
  }
}
