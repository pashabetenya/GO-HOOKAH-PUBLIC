import 'index.dart';

class CardPlaceRemoteImage extends StatelessWidget {
  const CardPlaceRemoteImage({
    Key? key,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  final Function() onTap;
  final String image;

  final String baseUrl = word;
  String get imageRemoteUrl => '$baseUrl$image';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage(
          imageRemoteUrl,
        ),
        backgroundColor: ColorsUtils.kGreyColor,
      ),
    );
  }
}
