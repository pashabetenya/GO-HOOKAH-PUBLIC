import 'index.dart';

class CardPlaceStreet extends StatelessWidget {
  const CardPlaceStreet({Key? key, required this.street}) : super(key: key);

  final String street;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        street,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kWhiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 15.0,
        ),
      ),
    );
  }
}
