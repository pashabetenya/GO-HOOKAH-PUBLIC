import 'index.dart';

class DetailProductItemRateText extends StatelessWidget {
  const DetailProductItemRateText({Key? key, required this.rate})
      : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Text(
      rate.toString(),
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kLightGreyColor,
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
      ),
    );
  }
}
