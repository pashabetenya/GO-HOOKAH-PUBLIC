import 'index.dart';

class DetailProductItemPlaceCity extends StatelessWidget {
  const DetailProductItemPlaceCity({
    Key? key,
    required this.city,
    required this.rate,
  }) : super(key: key);

  final String city;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DetailProductItemCitySampling(city: city),
          if (rate >= 1) DetailProductItemRate(rate: rate),
        ],
      ),
    );
  }
}
