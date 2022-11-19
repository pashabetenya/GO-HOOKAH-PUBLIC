import 'index.dart';

class ProductItemStreet extends StatelessWidget {
  const ProductItemStreet({Key? key, required this.street}) : super(key: key);

  final String street;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (street.isNotEmpty) ProductItemStreetText(street: street),
        if (street.isEmpty) const ProductItemStreetPlugText(),
      ],
    );
  }
}
