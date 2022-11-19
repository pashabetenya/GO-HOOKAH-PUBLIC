import 'index.dart';

class CatalogTabBarView extends StatelessWidget {
  const CatalogTabBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HookahPlaceList(),
        HookahStoreList(),
      ],
    );
  }
}
