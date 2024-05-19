import '../../../../core/shared/shared.dart';
import '../../../../core/single_selection/widget_dropdown.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  final amountController = TextEditingController();
  final noteController = TextEditingController();
  List<DropDownItem> bills = [
    DropDownItem(text: 'Gas bill', value: 'gas'),
    DropDownItem(text: 'Water', value: 'water'),
    DropDownItem(text: 'House rent', value: 'houseRent'),
    DropDownItem(text: 'Maid bill', value: 'maid'),
    DropDownItem(text: 'Internet', value: 'internet'),
    DropDownItem(text: 'Food and family', value: 'foodAndFamily'),
  ];
  String billType = "";
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final theme = state.scheme;
        return ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(16.0),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              "Add Expense",
              style: TextStyles.title(context: context, color: theme.textPrimary),
            ),
            const SizedBox(height: 16),
            Text(
              "Amount",
              style: TextStyles.caption(context: context, color: theme.textSecondary),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: amountController,
              decoration: InputDecoration(
                  hintText: 'please add your amount',
                  hintStyle: TextStyles.caption(context: context, color: theme.textPrimary)),
            ),
            const SizedBox(height: 8),
            Text(
              "Type",
              style: TextStyles.caption(context: context, color: theme.textSecondary),
            ),
            const SizedBox(height: 8),
            DropDownMenu(
              items: bills,
              value: billType,
              onSelect: (value) {
                FocusScope.of(context).requestFocus(FocusNode());
                setState(() {
                  billType = value;
                });
              },
              title: 'Nothing selected',
              text: billType.isEmpty ? "Nothing selected" : billType,
              shouldValidate: true,
              validationFlag: billType.isEmpty ? false : true,
            ),
            Text(
              "Note",
              style: TextStyles.caption(context: context, color: theme.textSecondary),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: noteController,
              decoration:
                  InputDecoration(hintText: 'note', hintStyle: TextStyles.caption(context: context, color: theme.textPrimary)),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add expense".toUpperCase(),
                style: TextStyles.title(context: context, color: theme.textPrimary),
              ),
            ),
          ],
        );
      },
    );
  }
}
