import 'index.dart';

class ReviewsLocallyImage extends StatelessWidget {
  const ReviewsLocallyImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 28.0,
      backgroundImage: const AssetImage(
        'assets/images/plug/frame.png',
      ),
      backgroundColor: ColorsUtils.kGreyColor,
    );
  }
}
