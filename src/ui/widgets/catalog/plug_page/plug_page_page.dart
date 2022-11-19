import 'index.dart';

class PlugPage extends StatelessWidget {
  const PlugPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          PlugPageImage(),
          PlugPageText(),
          PlugPageDescriptionText(),
        ],
      ),
    );
  }
}
