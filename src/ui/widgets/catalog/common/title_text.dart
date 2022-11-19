import 'index.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 15.0,
      ),
    );
  }
}
