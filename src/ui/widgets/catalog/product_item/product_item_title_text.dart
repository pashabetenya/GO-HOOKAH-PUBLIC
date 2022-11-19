import 'index.dart';

class ProductItemTitleText extends StatelessWidget {
  const ProductItemTitleText({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kYellowColor,
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
      ),
    );
  }
}
