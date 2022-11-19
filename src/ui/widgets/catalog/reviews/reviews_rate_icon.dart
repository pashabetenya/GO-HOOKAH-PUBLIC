import 'index.dart';

class ReviewsRateIcon extends StatelessWidget {
  const ReviewsRateIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: SvgPicture.asset(
        'assets/icons/home/star.svg',
        color: ColorsUtils.kGreyColor,
        height: 15.0,
        width: 15.0,
      ),
    );
  }
}
