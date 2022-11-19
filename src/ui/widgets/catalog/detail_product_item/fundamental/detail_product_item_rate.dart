import 'index.dart';

class DetailProductItemRate extends StatelessWidget {
  const DetailProductItemRate({Key? key, required this.rate}) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        DetailProductItemRateText(rate: rate),
        const DetailProductItemRateIcon(),
      ],
    );
  }
}
