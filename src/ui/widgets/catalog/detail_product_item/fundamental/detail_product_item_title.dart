import 'index.dart';

class DetailProductItemTitle extends StatelessWidget {
  const DetailProductItemTitle({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 16.0, left: 16.0),
      child: DetailProductItemTitleText(title: title),
    );
  }
}
