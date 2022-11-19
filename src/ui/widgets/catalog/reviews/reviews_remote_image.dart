import 'index.dart';

class ReviewsRemoteImage extends StatelessWidget {
  const ReviewsRemoteImage({Key? key, required this.link}) : super(key: key);

  final String link;

  final String baseUrl = word;
  String get imageRemoteUrl => '$baseUrl$link';

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28.0,
      backgroundImage: NetworkImage(
        imageRemoteUrl,
      ),
      backgroundColor: ColorsUtils.kGreyColor,
    );
  }
}
