


import '../../../../../core/shared/shared.dart';

class DashboardBottomNavigation extends StatelessWidget {
  final int index;
  final Function(int) onTap;

  const DashboardBottomNavigation({
    super.key,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return SafeArea(
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: theme.accentColor,
                width: 2,
              ),
            ),
            child: PhysicalModel(
              elevation: 32,
              color: theme.backgroundSecondary,
              shadowColor: theme.accentColor,
              borderRadius: BorderRadius.circular(100),
              clipBehavior: Clip.antiAlias,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List<_Item>.from(
                  [
                    const _Item(icon: Icons.home_rounded, label: "Dashboard"),
                    const _Item(icon: Icons.list_alt_rounded, label: "Jobs"),
                    const _Item(icon: Icons.account_balance_wallet_outlined, label: "Wallet"),
                    const _Item(icon: Icons.settings, label: "Settings"),
                  ],
                )
                    .mapIndexed<Widget>(
                      (int itemIndex, child) => InkWell(
                        splashColor: theme.accentColor,
                        overlayColor: MaterialStateProperty.all(theme.accentColor),
                        splashFactory: InkSparkle.splashFactory,
                        onTap: () async {
                          switch (itemIndex) {
                            case 0:
                              onTap(itemIndex);
                              break;
                            case 1:
                              onTap(itemIndex);
                              break;
                            case 2:
                              onTap(itemIndex);
                              break;
                            case 3:
                              onTap(itemIndex);
                              break;
                          }
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(height: 6),
                            Container(
                              width: itemIndex == index ? 16 : 0,
                              height: 2,
                              decoration: BoxDecoration(
                                color: itemIndex == index ? theme.accentColor : theme.textPrimary,
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            const SizedBox(height: 2),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Center(
                                  child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  itemIndex == index ? theme.accentColor : theme.textPrimary.withAlpha(150),
                                  BlendMode.srcIn,
                                ),
                                child: child.custom ??
                                    Icon(
                                      child.icon!,
                                      size: 18,
                                      weight: 700,
                                      grade: 200,
                                      opticalSize: 48,
                                    ),
                              )),
                            ),
                            Text(
                              child.label,
                              style: TextStyles.subTitle(
                                context: context,
                                color: itemIndex == index ? theme.accentColor : theme.textPrimary.withAlpha(150),
                              ).copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 8,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _Item {
  final String label;
  final IconData? icon;
  final Widget? custom;

  const _Item({
    required this.label,
    this.icon,
    this.custom,
  }) : assert(
          icon != null || custom != null,
          "Either icon or custom must be provided",
        );
}
