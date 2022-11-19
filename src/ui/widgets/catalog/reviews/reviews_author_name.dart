import 'index.dart';

class ReviewsAuthorName extends StatelessWidget {
  const ReviewsAuthorName({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: 17.0,
        color: ColorsUtils.kYellowColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
