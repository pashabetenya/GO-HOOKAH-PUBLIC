import 'index.dart';

class DetailProductItemContactTitle extends StatelessWidget {
  const DetailProductItemContactTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Контактная информация',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
      ),
    );
  }
}
