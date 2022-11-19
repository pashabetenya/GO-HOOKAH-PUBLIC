import 'index.dart';

class CardPlaceContactPhone extends StatelessWidget {
  const CardPlaceContactPhone({Key? key, required this.phone})
      : super(key: key);

  final String phone;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri(scheme: 'tel', path: phone));
      },
      child: SvgPicture.asset(
        'assets/icons/home/phone.svg',
        height: 26.0,
        width: 21.0,
        color: ColorsUtils.kYellowColor,
      ),
    );
  }
}
