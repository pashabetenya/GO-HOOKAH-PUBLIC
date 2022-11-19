import 'index.dart';

class ProductItemContacts extends StatelessWidget {
  const ProductItemContacts({
    Key? key,
    required this.onTap,
    required this.phone,
  }) : super(key: key);

  final Function() onTap;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ProductItemContactLocation(onTap: onTap),
        if (phone.isNotEmpty) ProductItemContactPhone(phone: phone),
      ],
    );
  }
}
