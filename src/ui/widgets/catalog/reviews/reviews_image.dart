import 'index.dart';

class ReviewsImage extends StatelessWidget {
  const ReviewsImage({Key? key, required this.link}) : super(key: key);

  final String link;

  @override
  Widget build(BuildContext context) {
    // return _displayPlugImage();
    return const ReviewsLocallyImage();
  }

  // Widget _displayPlugImage() {
  //   if (link.isNotEmpty) {
  //     return ReviewsRemoteImage(link: link);
  //   } else {
  //     return const ReviewsLocallyImage();
  //   }
  // }
}
