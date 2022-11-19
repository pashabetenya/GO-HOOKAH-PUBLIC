import 'index.dart';

class CatalogFilterPlacePage extends StatelessWidget {
  const CatalogFilterPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsUtils.kBackgroundColor,
        title: const TitleText(title: 'Кальянные: Фильтры'),
      ),
      body: const Center(
        child: PlugPage(),
      ),
    );
  }
}
