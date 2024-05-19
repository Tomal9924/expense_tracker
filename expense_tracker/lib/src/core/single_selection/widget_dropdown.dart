import '../shared/shared.dart';
import 'widget_dropdown_selector.dart';

class DropDownMenu extends StatelessWidget {
  final String? value;
  final String? title;
  final String? text;
  final List<DropDownItem> items;
  final bool shouldValidate;
  final Function(String) onSelect;
  final bool validationFlag;

  const DropDownMenu({
    super.key,
    required this.value,
    required this.text,
    required this.title,
    required this.items,
    required this.onSelect,
    required this.shouldValidate,
    required this.validationFlag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 48,
      decoration: BoxDecoration(
        color: context.scheme.backgroundPrimary,
        borderRadius: BorderRadius.circular(8),
        border: shouldValidate
            ? (value?.isNotEmpty ?? false
                ? Border.all(color: Colors.transparent, width: 0)
                : Border.all(color: context.errorColor, width: .5))
            : Border.all(color: Colors.transparent, width: 0),
      ),
      child: ListTile(
        dense: true,
        title: Text(
          text ?? "",
          style: TextStyles.body(
            context: context,
            color: shouldValidate
                ? (value!.isNotEmpty && value != "-1" ? context.scheme.textPrimary : context.errorColor)
                : context.scheme.textPrimary,
          ),
          textAlign: TextAlign.start,
        ),
        trailing: Icon(
          Icons.arrow_drop_down,
          size: 20,
          color: shouldValidate
              ? validationFlag
                  ? context.theme.hintColor
                  : context.errorColor
              : context.scheme.accentColor,
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) => DropDownSelector(
                      value: value ?? "",
                      title: title ?? "",
                      items: items,
                      onSelect: (value) {
                        onSelect(value);
                      },
                    ),
                fullscreenDialog: true),
          );
        },
      ),
    );
  }
}
