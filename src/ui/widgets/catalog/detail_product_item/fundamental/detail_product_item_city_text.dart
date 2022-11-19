import 'index.dart';

class DetailProductItemCityText extends StatelessWidget {
  const DetailProductItemCityText({Key? key, required this.city})
      : super(key: key);

  final String city;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$city, Беларусь',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kLightGreyColor,
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
      ),
    );
  }
}
