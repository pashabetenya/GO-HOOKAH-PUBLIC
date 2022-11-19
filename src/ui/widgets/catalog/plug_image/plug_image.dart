import 'index.dart';

class PlugImage extends StatelessWidget {
  const PlugImage({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    // return _displayPlugImage(context);
    return const LocallyImage();
  }

  // Widget _displayPlugImage(BuildContext context) {
  //   if (image.isNotEmpty) {
  //     return RemoteServerImage(image: image);
  //   } else {
  //     return const LocallyImage();
  //   }
  // }
}
