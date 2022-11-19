import 'index.dart';

class ReviewsRate extends StatelessWidget {
  const ReviewsRate({Key? key, required this.rate}) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ReviewsRateText(rate: rate),
        const ReviewsRateIcon(),
      ],
    );
  }
}
