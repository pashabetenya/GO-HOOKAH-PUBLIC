import 'index.dart';

class CatalogFilterStorePage extends StatelessWidget {
  const CatalogFilterStorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsUtils.kBackgroundColor,
        title: const TitleText(title: 'Магазины: Фильтры'),
      ),
      body: const Center(
        child: PlugPage(),
      ),
    );
  }
}
