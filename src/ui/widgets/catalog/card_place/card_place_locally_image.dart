import 'index.dart';

class CardPlaceLocallyImage extends StatelessWidget {
  const CardPlaceLocallyImage({Key? key, required this.onTap})
      : super(key: key);

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 30.0,
        backgroundImage: const AssetImage(
          'assets/images/plug/image.png',
        ),
        backgroundColor: ColorsUtils.kGreyColor,
      ),
    );
  }
}
