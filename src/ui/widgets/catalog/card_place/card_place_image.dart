import 'index.dart';

class CardPlaceImage extends StatelessWidget {
  const CardPlaceImage({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    // return _displayPlugImage();
    return CardPlaceLocallyImage(onTap: onTap);
  }

  // Widget _displayPlugImage() {
  //   if (image.isNotEmpty) {
  //     return CardPlaceRemoteImage(onTap: onTap, image: image);
  //   } else {
  //     return CardPlaceLocallyImage(onTap: onTap);
  //   }
  // }
}
