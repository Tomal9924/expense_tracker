import 'package:expense_tracker/src/core/shared/shared.dart';
import '../../../dashboard.dart';
import '../dashboard/appbar.dart';

class DashboardFragment extends StatefulWidget {
  const DashboardFragment({super.key});

  @override
  State<DashboardFragment> createState() => _DashboardFragmentState();
}

class _DashboardFragmentState extends State<DashboardFragment> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: [
        const DashboardAppBar(),
        const SizedBox(height: 16),
        const ExpenseCard(),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Recent transactions",
            style: TextStyles.title(context: context, color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
        const TransactionList(),
      ],
    );
  }
}
