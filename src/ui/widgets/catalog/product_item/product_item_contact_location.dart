import 'index.dart';

class ProductItemContactLocation extends StatelessWidget {
  const ProductItemContactLocation({Key? key, required this.onTap})
      : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return PlaceIcon(
      onTap: onTap,
      link: 'assets/icons/home/location_on.svg',
    );
  }
}
