import 'index.dart';

class DataSectionList extends StatelessWidget {
  const DataSectionList({Key? key, required this.onChange}) : super(key: key);

  final Function(int)? onChange;

  @override
  Widget build(BuildContext context) {
    Data section = Data();

    return Expanded(
      flex: 3,
      child: PageView.builder(
        onPageChanged: onChange,
        itemCount: section.data.length,
        itemBuilder: (context, index) => DataSection(
          image: section.data[index]['image']!,
          title: section.data[index]['text']!,
          description: section.data[index]['description']!,
        ),
      ),
    );
  }
}
