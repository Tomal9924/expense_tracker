import '../../../../core/shared/shared.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return PhysicalModel(
          color: theme.textPrimary.withAlpha(50),
          elevation: 8,
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.red,
                      Colors.orange,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card bill",
                    style: TextStyles.body(
                      context: context,
                      color: theme.textPrimary,
                    ).copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "One bank card bill",
                    style: TextStyles.caption(
                      context: context,
                      color: theme.textPrimary,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "-\$100",
                style: TextStyles.title(
                  context: context,
                  color: theme.backgroundSecondary,
                ).copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Icon(Icons.arrow_forward_ios_outlined, color: theme.textPrimary, size: 16),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
        );
      },
    );
  }
}
