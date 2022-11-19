import 'index.dart';

class DetailProductItemEmployeeTitle extends StatelessWidget {
  const DetailProductItemEmployeeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Сегодня на смене',
      style: TextStyle(
        fontFamily: 'SF Pro Text',
        color: ColorsUtils.kWhiteColor,
        fontWeight: FontWeight.w700,
        fontSize: 22.0,
      ),
    );
  }
}
