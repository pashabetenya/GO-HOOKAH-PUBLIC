import 'index.dart';

class Reviews extends StatelessWidget {
  const Reviews({
    Key? key,
    required this.name,
    required this.text,
    required this.time,
    required this.link,
    required this.rate,
  }) : super(key: key);

  final String name;
  final String text;
  final String time;
  final String link;
  final int rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        width: MediaQuery.of(context).size.width * 0.65,
        decoration: BoxDecoration(
          color: ColorsUtils.kLightDarkColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              ReviewsInformationAboutAuthor(
                link: link,
                name: name,
                rate: rate,
              ),
              ReviewsContent(text: text),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 11.0),
                child: ReviewsTime(time: time),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
