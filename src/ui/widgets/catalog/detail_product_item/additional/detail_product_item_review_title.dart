import 'index.dart';

class DetailProductItemReviewTitle extends StatelessWidget {
  const DetailProductItemReviewTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Отзывы',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
      ),
    );
  }
}
