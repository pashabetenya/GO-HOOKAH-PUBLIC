import 'index.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.street,
    required this.title,
    required this.phone,
    required this.image,
    required this.rate,
    required this.onTap,
    required this.open_1,
    required this.closed_1,
    required this.open_2,
    required this.closed_2,
    required this.open_3,
    required this.closed_3,
    required this.open_4,
    required this.closed_4,
    required this.open_5,
    required this.closed_5,
    required this.open_6,
    required this.closed_6,
    required this.open_7,
    required this.closed_7,
    required this.onMap,
  }) : super(key: key);

  final String street;
  final String title;
  final String phone;
  final String image;
  final int rate;
  final String open_1;
  final String closed_1;
  final String open_2;
  final String closed_2;
  final String open_3;
  final String closed_3;
  final String open_4;
  final String closed_4;
  final String open_5;
  final String closed_5;
  final String open_6;
  final String closed_6;
  final String open_7;
  final String closed_7;
  final Function()? onTap;
  final Function()? onMap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        clipBehavior: Clip.antiAlias,
        color: ColorsUtils.kLightDarkColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ProductItemImage(onTap: onTap, image: image),
            if (title.isNotEmpty) ProductItemTitle(title: title, rate: rate),
            ProductItemStreet(street: street),
            ProductItemDescription(
              open_1: open_1,
              open_2: open_2,
              open_3: open_3,
              open_4: open_4,
              open_5: open_5,
              open_6: open_6,
              open_7: open_7,
              closed_1: closed_1,
              closed_2: closed_2,
              closed_3: closed_3,
              closed_4: closed_4,
              closed_5: closed_5,
              closed_6: closed_6,
              closed_7: closed_7,
              phone: phone,
              onTap: onMap!,
            ),
          ],
        ),
      ),
    );
  }
}
