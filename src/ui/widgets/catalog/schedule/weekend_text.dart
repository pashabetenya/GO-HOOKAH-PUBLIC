import 'index.dart';

class WeekendText extends StatelessWidget {
  const WeekendText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Выходной',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
      ),
    );
  }
}
