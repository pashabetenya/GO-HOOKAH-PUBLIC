import 'index.dart';

class DetailProductItemCityPlugText extends StatelessWidget {
  const DetailProductItemCityPlugText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Город отсутствует',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kLightGreyColor,
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
      ),
    );
  }
}
