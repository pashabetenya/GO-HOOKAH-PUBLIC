import 'index.dart';

class EmployeeImage extends StatelessWidget {
  const EmployeeImage({Key? key, required this.link}) : super(key: key);

  final String link;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      link,
      height: 60.0,
      width: 60.0,
    );
  }
}
