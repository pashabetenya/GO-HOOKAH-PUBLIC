import 'index.dart';

class ProductItemStreetText extends StatelessWidget {
  const ProductItemStreetText({Key? key, required this.street})
      : super(key: key);

  final String street;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 16.0),
      child: Text(
        street,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kWhiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
