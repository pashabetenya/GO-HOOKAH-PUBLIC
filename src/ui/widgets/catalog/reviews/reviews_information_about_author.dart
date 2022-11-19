import 'index.dart';

class ReviewsInformationAboutAuthor extends StatelessWidget {
  const ReviewsInformationAboutAuthor({
    Key? key,
    required this.link,
    required this.name,
    required this.rate,
  }) : super(key: key);

  final String link;
  final String name;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ReviewsImage(link: link),
        ReviewsAuthor(
          name: name,
          rate: rate,
        ),
      ],
    );
  }
}
