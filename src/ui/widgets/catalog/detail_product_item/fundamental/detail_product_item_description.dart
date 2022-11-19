import 'index.dart';

class DetailProductItemDescription extends StatelessWidget {
  const DetailProductItemDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (description.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 16.0, left: 16.0),
            child: MoreText(
              text: description,
              sizeText: 17.0,
              sizeMore: 17.0,
              sizeLess: 17.0,
              colorClickableText: ColorsUtils.kYellowColor,
              colorText: ColorsUtils.kWhiteColor,
              colorMore: ColorsUtils.kYellowColor,
              colorLess: ColorsUtils.kYellowColor,
            ),
          ),
      ],
    );
  }
}
