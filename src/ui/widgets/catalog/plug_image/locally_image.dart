import 'index.dart';

class LocallyImage extends StatelessWidget {
  const LocallyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/plug/image.png',
        height: MediaQuery.of(context).size.height * 0.25,
        fit: BoxFit.cover,
      ),
    );
  }
}
