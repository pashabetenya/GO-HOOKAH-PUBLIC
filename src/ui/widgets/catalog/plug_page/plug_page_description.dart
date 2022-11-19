import 'index.dart';

class PlugPageDescriptionText extends StatelessWidget {
  const PlugPageDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 25.0, right: 25.0),
      child: Text(
        'Мы постоянно совершенствуем сервис для Вашего пользования. Совсем скоро здесь появятся новые крутые функции!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kGreyColor,
          fontWeight: FontWeight.w400,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
