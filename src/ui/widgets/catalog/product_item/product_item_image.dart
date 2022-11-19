import 'index.dart';

class ProductItemImage extends StatelessWidget {
  const ProductItemImage({
    Key? key,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  final Function()? onTap;
  final String image;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: PlugImage(image: image),
    );
  }
}
