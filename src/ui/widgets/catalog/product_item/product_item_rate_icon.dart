import 'index.dart';

class ProductItemRateIcon extends StatelessWidget {
  const ProductItemRateIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0, right: 6.0),
      child: SvgPicture.asset(
        'assets/icons/home/star.svg',
        color: ColorsUtils.kLightGreyColor,
        height: 15.0,
        width: 15.0,
      ),
    );
  }
}
