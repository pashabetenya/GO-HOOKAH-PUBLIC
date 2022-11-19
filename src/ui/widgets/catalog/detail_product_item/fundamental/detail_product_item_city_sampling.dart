import 'index.dart';

class DetailProductItemCitySampling extends StatelessWidget {
  const DetailProductItemCitySampling({Key? key, required this.city})
      : super(key: key);

  final String city;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (city.isNotEmpty) DetailProductItemCityText(city: city),
        if (city.isEmpty) const DetailProductItemCityPlugText(),
      ],
    );
  }
}
