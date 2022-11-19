import 'index.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Button(
      color: ColorsUtils.kYellowColor,
      title: 'Продолжить',
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) {
              return const CatalogPage();
            },
          ),
          (Route<dynamic> route) {
            return false;
          },
        );
      },
    );
  }
}
