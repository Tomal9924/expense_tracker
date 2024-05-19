import '../../../../../core/shared/shared.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                margin: const EdgeInsets.only(left: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: theme.expenseGradient,
                  color: Colors.red.withAlpha(200),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total Income",
                      style: TextStyles.caption(context: context, color: theme.textPrimary),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "\$ 0.0",
                      style: TextStyles.title(context: context, color: theme.textPrimary),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 1,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.12,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                margin: const EdgeInsets.only(right: 8),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: theme.incomeGradient,
                  color: Colors.blue.withAlpha(200),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total expense",
                      style: TextStyles.caption(context: context, color: theme.textPrimary),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "\$ 0.0",
                      style: TextStyles.title(context: context, color: theme.textPrimary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
