import 'index.dart';

class DetailProductItemReview extends StatelessWidget {
  const DetailProductItemReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Line(),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 16.0, left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              DetailProductItemReviewTitle(),
              Padding(
                padding: EdgeInsets.only(top: 6.0, bottom: 10.0),
                child: DetailProductItemReviewList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
