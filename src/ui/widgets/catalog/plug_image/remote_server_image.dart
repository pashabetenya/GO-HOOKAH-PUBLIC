import 'index.dart';

class RemoteServerImage extends StatelessWidget {
  const RemoteServerImage({Key? key, required this.image}) : super(key: key);

  final String image;

  final String baseUrl = word;
  String get imageRemoteUrl => '$baseUrl$image';

  @override
  Widget build(BuildContext context) {
    return Ink.image(
      image: NetworkImage(imageRemoteUrl),
      height: MediaQuery.of(context).size.height * 0.25,
      fit: BoxFit.cover,
    );
  }
}
