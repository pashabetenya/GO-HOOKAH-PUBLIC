import 'index.dart';

class ReviewsTime extends StatelessWidget {
  const ReviewsTime({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Text(
      time,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kGreyColor,
        fontWeight: FontWeight.w400,
        fontSize: 13.0,
      ),
    );
  }
}
