import 'index.dart';

class ReviewsRateText extends StatelessWidget {
  const ReviewsRateText({Key? key, required this.rate}) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Text(
      rate.toString(),
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: 15.0,
        color: ColorsUtils.kGreyColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
