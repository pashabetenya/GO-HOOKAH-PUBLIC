import 'index.dart';

class MoreText extends StatelessWidget {
  const MoreText({
    Key? key,
    required this.text,
    required this.sizeText,
    required this.sizeMore,
    required this.sizeLess,
    required this.colorText,
    required this.colorMore,
    required this.colorLess,
    required this.colorClickableText,
  }) : super(key: key);

  final String text;
  final double sizeText;
  final double sizeMore;
  final double sizeLess;
  final Color colorText;
  final Color colorMore;
  final Color colorLess;
  final Color colorClickableText;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: colorText,
        fontWeight: FontWeight.w400,
        fontSize: sizeText,
      ),
      moreStyle: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: sizeMore,
        color: colorMore,
        fontWeight: FontWeight.w400,
      ),
      lessStyle: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: sizeLess,
        color: colorLess,
        fontWeight: FontWeight.w400,
      ),
      trimLines: 5,
      colorClickableText: colorClickableText,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' Дальше',
      trimExpandedText: ' Скрыть',
    );
  }
}
