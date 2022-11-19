import 'index.dart';

class CardPlaceRate extends StatelessWidget {
  const CardPlaceRate({Key? key, required this.rate}) : super(key: key);

  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Row(
        children: <Widget>[
          CardPlaceRateText(rate: rate),
          const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: CardPlaceRateIcon(),
          ),
        ],
      ),
    );
  }
}
