import 'index.dart';

class ProductItemStreetPlugText extends StatelessWidget {
  const ProductItemStreetPlugText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 16.0),
      child: Text(
        'Адресс отсутствует',
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kWhiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
