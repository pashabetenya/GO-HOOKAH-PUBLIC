import 'index.dart';

class CatalogTabBar extends StatelessWidget {
  const CatalogTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
      child: Material(
        color: ColorsUtils.kLightDarkColor,
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.95,
          child: TabBar(
            tabs: const [
              Tab(text: 'Кальянные'),
              Tab(text: 'Магазины'),
            ],
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: ColorsUtils.kWhiteColor,
            ),
            unselectedLabelColor: ColorsUtils.kWhiteColor,
            labelColor: ColorsUtils.kDarkColor,
          ),
        ),
      ),
    );
  }
}
