import 'index.dart';

class CardPlaceRateText extends StatelessWidget {
  const CardPlaceRateText({Key? key, required this.rate}) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Text(
      rate.toString(),
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: 15.0,
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
