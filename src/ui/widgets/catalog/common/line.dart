import 'index.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
      child: Divider(
        color: ColorsUtils.kLightGreyColor,
        height: 0.1,
      ),
    );
  }
}
