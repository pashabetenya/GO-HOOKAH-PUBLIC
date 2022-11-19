import 'index.dart';

class Schedule extends StatelessWidget {
  const Schedule({
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
    return _dateVerification();
  }

  Widget _dateVerification() {
    var currentDate = DateTime.now();

    if (currentDate.weekday == 1) {
      if (open_1.isEmpty && closed_1.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_1, closed: closed_1);
      }
    } else if (currentDate.weekday == 2) {
      if (open_2.isEmpty && closed_2.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_2, closed: closed_2);
      }
    } else if (currentDate.weekday == 3) {
      if (open_3.isEmpty && closed_3.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_3, closed: closed_3);
      }
    } else if (currentDate.weekday == 4) {
      if (open_4.isEmpty && closed_4.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_4, closed: closed_4);
      }
    } else if (currentDate.weekday == 5) {
      if (open_5.isEmpty && closed_5.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_5, closed: closed_5);
      }
    } else if (currentDate.weekday == 6) {
      if (open_6.isEmpty && closed_6.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_6, closed: closed_6);
      }
    } else {
      if (open_7.isEmpty && closed_7.isEmpty) {
        return const WeekendText();
      } else {
        return ScheduleText(open: open_7, closed: closed_7);
      }
    }
  }
}
