import 'index.dart';

class DetailProductItemScheduleTimeText extends StatelessWidget {
  const DetailProductItemScheduleTimeText({Key? key, required this.time})
      : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Text(
      time,
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
      ),
    );
  }
}
