import 'index.dart';

class AnboardingsPage extends StatefulWidget {
  const AnboardingsPage({Key? key}) : super(key: key);

  @override
  State<AnboardingsPage> createState() => _AnboardingsPageState();
}

class _AnboardingsPageState extends State<AnboardingsPage> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.kBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DataSectionList(
              onChange: (value) {
                setState(() {
                  current = value;
                });
              },
            ),
            Indicator(current: current),
            const ContinueButton(),
          ],
        ),
      ),
    );
  }
}
