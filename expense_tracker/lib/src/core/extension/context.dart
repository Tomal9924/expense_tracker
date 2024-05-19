import '../shared/shared.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  Color get primaryColor => theme.primaryColor;

  Color get hintColor => theme.hintColor;

  Color get textColor => Colors.black;

  Color get secondaryColor => theme.cardColor;
  Color get errorColor => scheme.negative;

  Color get backgroundColor => scheme.backgroundPrimary;

  double get topInset => MediaQuery.of(this).padding.top;

  double get bottomInset => MediaQuery.of(this).padding.bottom;

  double get smallestSide => MediaQuery.of(this).size.shortestSide;

  double get width => MediaQuery.of(this).size.width;

  ThemeScheme get scheme {
    return ThemeScheme.dark();
  }
}
