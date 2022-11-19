import 'index.dart';

class ReviewsContent extends StatelessWidget {
  const ReviewsContent({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Scrollbar(
        trackVisibility: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: MoreText(
                  text: text,
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
          ),
        ),
      ),
    );
  }
}
