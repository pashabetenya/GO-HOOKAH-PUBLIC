import 'index.dart';

class ScheduleText extends StatelessWidget {
  const ScheduleText({
    Key? key,
    required this.open,
    required this.closed,
  }) : super(key: key);

  final String open;
  final String closed;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$open - $closed',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w400,
        fontSize: 15.0,
      ),
    );
  }
}
