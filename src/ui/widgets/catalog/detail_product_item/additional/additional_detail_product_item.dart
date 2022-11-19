import 'index.dart';

class AdditionalDetailProductItem extends StatelessWidget {
  const AdditionalDetailProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        DetailProductItemEmployee(),
        DetailProductItemReview(),
      ],
    );
  }
}
