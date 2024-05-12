import '../../enums.dart';
import '../shared.dart';

class ThemeScheme {
  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color accentColor;
  final Color textPrimary;
  final Color textSecondary;
  final Color positive;
  final Color negative;
  final Color live;
  final Color warning;
  final Color scoreCardBottom;
  final Color pink;
  final Color white;
  final Gradient expenseGradient;
  final Gradient incomeGradient;

  ThemeScheme({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.accentColor,
    required this.textPrimary,
    required this.textSecondary,
    required this.positive,
    required this.negative,
    required this.live,
    required this.warning,
    required this.scoreCardBottom,
    required this.pink,
    required this.white,
    required this.expenseGradient,
    required this.incomeGradient,
  });

  factory ThemeScheme.dark() {
    final theme = ThemeScheme(
      backgroundPrimary: const Color(0xFF0C131D),
      backgroundSecondary: const Color(0xFF15212D),
      accentColor: const Color(0xFF2C5370),
      textPrimary: const Color(0xFFCCD0D3),
      textSecondary: const Color(0xFF919496),
      positive: const Color(0xFF00FB64),
      negative: const Color(0xFFFF2C2C),
      live: const Color(0xFFFF2C2C),
      warning: const Color(0xFFFDDD00),
      scoreCardBottom: const Color(0xFF00BAFF),
      pink: const Color(0xFFC521FF),
      white: const Color(0xFFFFFFFF),
      expenseGradient: LinearGradient(
        colors: [
          Colors.amber.shade200,
          Colors.amber.shade500,
          Colors.amber.shade700,
        ],
      ),
      incomeGradient: LinearGradient(
        colors: [
          Colors.teal.shade200,
          Colors.teal.shade500,
          Colors.teal.shade700,
        ],
      ),
    );

    return theme;
  }
  factory ThemeScheme.find({
    required ThemeType type,
  }) {
    final theme = ThemeScheme(
      backgroundPrimary: const Color(0xFF1B1A17),
      backgroundSecondary: const Color(0xFFFBF9F4),
      accentColor: const Color(0xFF060505),
      textPrimary: const Color(0xFFCCD0D3),
      textSecondary: const Color(0xFF919496),
      positive: const Color(0xFF00FB64),
      negative: const Color(0xFFFF2C2C),
      live: const Color(0xFFFF2C2C),
      warning: const Color(0xFFFDDD00),
      scoreCardBottom: const Color(0xFF00BAFF),
      pink: const Color(0xFFC521FF),
      white: const Color(0xFFFFFFFF),
      expenseGradient: LinearGradient(
        colors: [
          Colors.amber.shade200,
          Colors.amber.shade500,
          Colors.amber.shade700,
        ],
      ),
      incomeGradient: LinearGradient(
        colors: [
          Colors.teal.shade200,
          Colors.teal.shade500,
          Colors.teal.shade700,
        ],
      ),
    );

    return theme;
  }
}
