import 'index.dart';

class HookahPlaceList extends StatelessWidget {
  const HookahPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Search(
          onChanged: (title) {},
        ),
        PanelButtons(
          onChangeMap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const CatalogMapPlaceListPage();
              },
            ));
          },
          onChangeFilter: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return const CatalogFilterPlacePage();
              },
            ));
          },
        ),
        const Expanded(
          child: PlaceList(),
        ),
      ],
    );
  }
}
