import 'index.dart';
import 'dart:ui';

class CardPlace extends StatelessWidget {
  const CardPlace({
    Key? key,
    required this.image,
    required this.title,
    required this.rate,
    required this.onTap,
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
    required this.street,
  }) : super(key: key);

  final String image;
  final String title;
  final int rate;
  final Function() onTap;
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
  final String street;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 0.4, sigmaY: 0.4),
        child: Container(
          constraints: BoxConstraints(
            minHeight: 0,
            maxHeight: MediaQuery.of(context).size.height * 0.20,
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            color: const Color(0xBF000000),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CardPlaceDescription(
                  image: image,
                  title: title,
                  rate: rate,
                  onTap: onTap,
                  street: street,
                ),
                CardPlaceContacts(
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
                  phone: phone,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
