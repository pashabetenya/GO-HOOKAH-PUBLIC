import 'index.dart';

class CardPlaceTitle extends StatelessWidget {
  const CardPlaceTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        fontSize: 17.0,
        color: ColorsUtils.kYellowColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
