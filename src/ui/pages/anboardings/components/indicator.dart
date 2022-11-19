import 'index.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required this.current,
  }) : super(key: key);

  final int current;

  @override
  Widget build(BuildContext context) {
    Data section = Data();

    return Expanded(
      flex: 2,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                section.data.length,
                (index) => Container(
                  margin: const EdgeInsets.only(top: 8.0, right: 5.0),
                  height: 8.0,
                  width: 8.0,
                  decoration: BoxDecoration(
                    color: current == index
                        ? ColorsUtils.kYellowColor
                        : ColorsUtils.kGreyColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
