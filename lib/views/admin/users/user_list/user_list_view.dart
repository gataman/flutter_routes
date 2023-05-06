import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routes/utils/routes/app_router.dart';

@RoutePage()
class UserListView extends StatelessWidget {
  const UserListView({super.key});

  @override
  Widget build(BuildContext context) {
    final userList = List.generate(100, (index) => 'User Name $index');
    return ListView.builder(
      itemBuilder: (context, index) => Card(
        child: InkWell(
          onTap: () {
            context.router.push(
              UserDetailRoute(userId: index),
            );
          },
          child: ListTile(
            title: Text(userList[index]),
          ),
        ),
      ),
      itemCount: userList.length,
    );
  }
}
