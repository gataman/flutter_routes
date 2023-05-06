import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_routes/utils/navigation/admin_drawe_model.dart';

class AdminDrawerMenu extends StatelessWidget {
  const AdminDrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerList = AdminDrawerModel.drawerList;
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text('Header'),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  final drawerItem = drawerList[index];

                  return _DrawerListTile(drawerItem: drawerItem);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0,
                  );
                },
                itemCount: drawerList.length),
          )
        ],
      ),
    );
  }
}

class _DrawerListTile extends StatelessWidget {
  const _DrawerListTile({
    required this.drawerItem,
  });

  final AdminDrawerModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!context.router.currentPath.contains(drawerItem.route)) {
          context.router.pushNamed(drawerItem.route);
        }
        Navigator.pop(context);
      },
      child: ListTile(
        leading: Icon(drawerItem.icon),
        title: Text(drawerItem.title),
      ),
    );
  }
}
