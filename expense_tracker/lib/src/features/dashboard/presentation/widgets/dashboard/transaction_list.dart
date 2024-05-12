import '../../../../../core/shared/shared.dart';
import '../transaction_card.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      itemBuilder: (context, index) => const TransactionCard(),
    );
  }
}
