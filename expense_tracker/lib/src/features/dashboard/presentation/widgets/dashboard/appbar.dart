import 'package:flutter/material.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      dense: true,
      visualDensity: VisualDensity.comfortable,
      title: Text('Dashboard'),
      subtitle: Text('User Name'),
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      
    );
  }
}