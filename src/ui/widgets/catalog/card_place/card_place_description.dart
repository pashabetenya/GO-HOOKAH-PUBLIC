import 'index.dart';

class CardPlaceDescription extends StatelessWidget {
  const CardPlaceDescription({
    Key? key,
    required this.image,
    required this.title,
    required this.rate,
    required this.street,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String title;
  final int rate;
  final String street;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CardPlaceImage(image: image, onTap: onTap),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CardPlaceTitle(title: title),
                if (rate >= 1) CardPlaceRate(rate: rate),
                if (street.isNotEmpty) CardPlaceStreet(street: street),
                if (street.isEmpty) const CardPlaceStreetPlugText(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
