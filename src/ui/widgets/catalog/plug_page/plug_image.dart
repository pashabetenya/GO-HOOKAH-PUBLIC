import 'index.dart';

class PlugPageImage extends StatelessWidget {
  const PlugPageImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/plug/image.png',
      height: MediaQuery.of(context).size.height * 0.18,
    );
  }
}
