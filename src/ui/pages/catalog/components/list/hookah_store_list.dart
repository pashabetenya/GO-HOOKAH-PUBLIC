import 'index.dart';

class HookahStoreList extends StatelessWidget {
  const HookahStoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Search(onChanged: null),
        PanelButtons(
          onChangeMap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const CatalogMapStoreListPage();
              },
            ));
          },
          onChangeFilter: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const CatalogFilterStorePage();
              },
            ));
          },
        ),
        const Expanded(
          child: StoreList(),
        ),
      ],
    );
  }
}
