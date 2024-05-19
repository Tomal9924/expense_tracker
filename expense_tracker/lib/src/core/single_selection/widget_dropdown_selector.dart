import '../shared/shared.dart';

// ignore: must_be_immutable
class DropDownSelector extends StatefulWidget {
  String value;
  final String title;
  final List<DropDownItem> items;
  final Function(String) onSelect;

  DropDownSelector({
    super.key,
    required this.value,
    required this.title,
    required this.items,
    required this.onSelect,
  });

  @override
  State<DropDownSelector> createState() => _DropDownSelectorState();
}

class _DropDownSelectorState extends State<DropDownSelector> {
  final TextEditingController searchController = TextEditingController();

  List<DropDownItem> list = [];

  @override
  void initState() {
    list = widget.items;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          widget.title,
          style: TextStyles.title(
            context: context,
            color: context.scheme.textPrimary,
          ),
        ),
        backgroundColor: context.backgroundColor,
        centerTitle: false,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: context.backgroundColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: context.theme.hintColor, width: .5),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              controller: searchController,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.search,
              onChanged: (value) {
                setState(() {
                  list = widget.items
                      .where(
                        (element) => element.text.toLowerCase().startsWith(
                              value.toLowerCase(),
                            ),
                      )
                      .toList();
                });
              },
              decoration: InputDecoration(
                hintText: "search",
                fillColor: context.scheme.textPrimary.withAlpha(50),
                filled: true,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final DropDownItem item = list[index];
                return ListTile(
                  onTap: () {
                    setState(() {
                      widget.value = item.value;
                    });
                    widget.onSelect(item.value);
                    Navigator.of(context).pop();
                  },
                  title: Text(
                    item.text.trim(),
                    style: TextStyles.caption(
                      context: context,
                      color: context.scheme.textPrimary,
                    ),
                  ),
                  leading: Icon(
                    widget.value.toLowerCase() == item.value.toLowerCase()
                        ? Icons.check_box_rounded
                        : Icons.check_box_outline_blank_rounded,
                    color: context.theme.hintColor,
                  ),
                  dense: false,
                  visualDensity: VisualDensity.comfortable,
                  contentPadding: EdgeInsets.zero,
                );
              },
              itemCount: list.length,
            ),
          ),
        ],
      ),
    );
  }
}
