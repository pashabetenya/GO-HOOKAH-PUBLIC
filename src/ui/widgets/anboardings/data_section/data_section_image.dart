import 'index.dart';

class DataSectionImage extends StatelessWidget {
  const DataSectionImage({Key? key, required this.image}) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image!,
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.41,
    );
  }
}
