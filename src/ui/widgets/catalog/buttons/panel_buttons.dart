import 'index.dart';

class PanelButtons extends StatelessWidget {
  const PanelButtons({
    Key? key,
    required this.onChangeMap,
    required this.onChangeFilter,
  }) : super(key: key);

  final Function() onChangeMap;
  final Function() onChangeFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 16.0, top: 15.0, right: 18.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Button(
            link: 'assets/icons/home/explore.svg',
            text: 'Карта',
            onChange: onChangeMap,
            height: 0.05,
            width: 0.45,
          ),
          Button(
            link: 'assets/icons/home/tune.svg',
            text: 'Фильтры',
            onChange: onChangeFilter,
            height: 0.05,
            width: 0.45,
          ),
        ],
      ),
    );
  }
}
