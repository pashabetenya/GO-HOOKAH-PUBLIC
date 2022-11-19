import 'index.dart';

class CardPlaceRateIcon extends StatelessWidget {
  const CardPlaceRateIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/home/star.svg',
      color: ColorsUtils.kWhiteColor,
      height: 15.0,
      width: 15.0,
    );
  }
}
