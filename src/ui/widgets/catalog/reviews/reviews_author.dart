import 'index.dart';

class ReviewsAuthor extends StatelessWidget {
  const ReviewsAuthor({
    Key? key,
    required this.name,
    required this.rate,
  }) : super(key: key);

  final String name;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ReviewsAuthorName(name: name),
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: ReviewsRate(rate: rate),
          ),
        ],
      ),
    );
  }
}
