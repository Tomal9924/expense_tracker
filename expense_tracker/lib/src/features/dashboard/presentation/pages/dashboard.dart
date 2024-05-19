import 'package:flutter/material.dart';

import '../../../../core/shared/shared.dart';
import '../../dashboard.dart';
import '../widgets/add_expense.dart';

class DashboardPage extends StatefulWidget {
  static const path = '/dashboard';
  static const name = 'dashboard';

  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;
  late final List<Widget> fragments;
  @override
  void initState() {
    super.initState();

    fragments = [
      const DashboardFragment(),
      const HistoryFragment(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: fragments.elementAt(currentIndex),
      bottomNavigationBar: DashboardBottomNavigation(
        index: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: const AddExpense(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
