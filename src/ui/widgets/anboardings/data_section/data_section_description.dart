import 'index.dart';

class DataSectionDescription extends StatelessWidget {
  const DataSectionDescription({Key? key, required this.description})
      : super(key: key);

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Text(
        description!,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          fontSize: 15.0,
          fontWeight: FontWeight.w400,
          color: ColorsUtils.kWhiteColor,
        ),
      ),
    );
  }
}
