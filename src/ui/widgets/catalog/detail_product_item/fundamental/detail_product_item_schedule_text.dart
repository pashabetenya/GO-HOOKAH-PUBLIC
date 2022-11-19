import 'index.dart';

class DetailProductItemScheduleText extends StatelessWidget {
  const DetailProductItemScheduleText({
    Key? key,
    required this.day,
    required this.time,
  }) : super(key: key);

  final String day;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width * 0.23,
        decoration: BoxDecoration(
          color: ColorsUtils.kLightDarkColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DetailProductItemScheduleDayText(day: day),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: DetailProductItemScheduleTimeText(time: time),
            ),
          ],
        ),
      ),
    );
  }
}
