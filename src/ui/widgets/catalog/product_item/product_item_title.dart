import 'index.dart';

class ProductItemTitle extends StatelessWidget {
  const ProductItemTitle({
    Key? key,
    required this.title,
    required this.rate,
  }) : super(key: key);

  final String title;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: ProductItemTitleText(title: title),
          ),
          if (rate > 1) ProductItemRate(rate: rate),
        ],
      ),
    );
  }
}
