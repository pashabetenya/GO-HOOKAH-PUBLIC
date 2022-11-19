import 'index.dart';

class DataSectionTitle extends StatelessWidget {
  const DataSectionTitle({Key? key, required this.title}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Text(
        title!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SF Pro Display',
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          color: ColorsUtils.kWhiteColor,
        ),
      ),
    );
  }
}
