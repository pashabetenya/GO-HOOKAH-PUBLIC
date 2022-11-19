import 'index.dart';

class DataSection extends StatelessWidget {
  const DataSection({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String? image;
  final String? title;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        DataSectionImage(image: image!),
        DataSectionTitle(title: title!),
        DataSectionDescription(description: description!),
      ],
    );
  }
}
