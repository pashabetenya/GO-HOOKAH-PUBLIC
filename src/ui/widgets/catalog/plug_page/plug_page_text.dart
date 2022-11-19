import 'index.dart';

class PlugPageText extends StatelessWidget {
  const PlugPageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Text(
        'Страница находится в разработке..',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SF Pro Display',
          color: ColorsUtils.kWhiteColor,
          fontWeight: FontWeight.w700,
          fontSize: 22.0,
        ),
      ),
    );
  }
}
