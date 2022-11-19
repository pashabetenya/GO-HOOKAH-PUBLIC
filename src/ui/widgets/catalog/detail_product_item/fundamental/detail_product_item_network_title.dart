import 'index.dart';

class DetailProductItemNetworkTitle extends StatelessWidget {
  const DetailProductItemNetworkTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Text(
        'Социальные сети',
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kGreyColor,
          fontWeight: FontWeight.w400,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
