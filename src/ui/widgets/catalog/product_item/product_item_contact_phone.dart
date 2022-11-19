import 'index.dart';

class ProductItemContactPhone extends StatelessWidget {
  const ProductItemContactPhone({Key? key, required this.phone})
      : super(key: key);

  final String phone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: PlaceIcon(
        link: 'assets/icons/home/phone.svg',
        onTap: () {
          launchUrl(Uri(scheme: 'tel', path: phone));
        },
      ),
    );
  }
}
