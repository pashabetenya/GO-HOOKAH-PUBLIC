import 'index.dart';

class ProductItemRate extends StatelessWidget {
  const ProductItemRate({Key? key, required this.rate}) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        ProductItemRateText(rate: rate),
        const ProductItemRateIcon(),
      ],
    );
  }
}
