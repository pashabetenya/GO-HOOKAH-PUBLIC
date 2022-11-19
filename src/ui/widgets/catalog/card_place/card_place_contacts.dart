import 'index.dart';

class CardPlaceContacts extends StatelessWidget {
  const CardPlaceContacts({
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
    required this.phone,
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
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 72.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CardPlaceContactSchedule(
            open_1: open_1,
            closed_1: closed_1,
            open_2: open_2,
            closed_2: closed_2,
            open_3: open_3,
            closed_3: closed_3,
            open_4: open_4,
            closed_4: closed_4,
            open_5: open_5,
            closed_5: closed_5,
            open_6: open_6,
            closed_6: closed_6,
            open_7: open_7,
            closed_7: closed_7,
          ),
          if (phone.isNotEmpty) CardPlaceContactPhone(phone: phone),
        ],
      ),
    );
  }
}
