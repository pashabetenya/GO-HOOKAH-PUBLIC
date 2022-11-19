import 'index.dart';

class DetailProductItemScheduleDayText extends StatelessWidget {
  const DetailProductItemScheduleDayText({Key? key, required this.day})
      : super(key: key);

  final String day;

  @override
  Widget build(BuildContext context) {
    return Text(
      day,
      style: TextStyle(
        fontFamily: 'SF Display Text',
        color: ColorsUtils.kYellowColor,
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
      ),
    );
  }
}
