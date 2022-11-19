import 'index.dart';

class DetailProductItemSchedule extends StatelessWidget {
  const DetailProductItemSchedule({
    Key? key,
    required this.open_1,
    required this.closed_1,
    required this.open_2,
    required this.closed_2,
    required this.open_3,
    required this.closed_3,
    required this.open_4,
    required this.closed_4,
    required this.open_5,
    required this.closed_5,
    required this.open_6,
    required this.closed_6,
    required this.open_7,
    required this.closed_7,
  }) : super(key: key);

  final String open_1;
  final String closed_1;
  final String open_2;
  final String closed_2;
  final String open_3;
  final String closed_3;
  final String open_4;
  final String closed_4;
  final String open_5;
  final String closed_5;
  final String open_6;
  final String closed_6;
  final String open_7;
  final String closed_7;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            if (open_1.isNotEmpty && closed_1.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_1 - $closed_1', day: 'ПН'),
            if (open_1.isEmpty && closed_1.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'ПН'),
            if (open_2.isNotEmpty && closed_2.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_2 - $closed_2', day: 'ВТ'),
            if (open_2.isEmpty && closed_2.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'ВТ'),
            if (open_3.isNotEmpty && closed_3.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_3 - $closed_3', day: 'СР'),
            if (open_3.isEmpty && closed_3.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'СР'),
            if (open_4.isNotEmpty && closed_4.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_4 - $closed_4', day: 'ЧТ'),
            if (open_4.isEmpty && closed_4.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'ЧТ'),
            if (open_5.isNotEmpty && closed_5.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_5 - $closed_5', day: 'ПТ'),
            if (open_5.isEmpty && closed_5.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'ПТ'),
            if (open_6.isNotEmpty && closed_6.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_6 - $closed_6', day: 'СБ'),
            if (open_6.isEmpty && closed_6.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'СБ'),
            if (open_7.isNotEmpty && closed_7.isNotEmpty)
              DetailProductItemScheduleText(
                  time: '$open_7 - $closed_7', day: 'ВС'),
            if (open_7.isEmpty && closed_7.isEmpty)
              const DetailProductItemScheduleText(time: 'Выходной', day: 'ВС'),
          ],
        ),
      ),
    );
  }
}
