import 'index.dart';

class DetailProductItemTitleText extends StatelessWidget {
  const DetailProductItemTitleText({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'SF Pro Display',
        color: ColorsUtils.kYellowColor,
        fontWeight: FontWeight.w700,
        fontSize: 34.0,
      ),
    );
  }
}
