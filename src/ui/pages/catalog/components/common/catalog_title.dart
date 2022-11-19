import 'index.dart';

class CatalogTitle extends StatelessWidget {
  const CatalogTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 60.0),
      child: Text(
        'Каталог',
        style: TextStyle(
          fontFamily: 'SF Pro Display',
          color: ColorsUtils.kWhiteColor,
          fontWeight: FontWeight.bold,
          fontSize: 34.0,
        ),
      ),
    );
  }
}
