import 'index.dart';

class ContactsImage extends StatelessWidget {
  const ContactsImage({Key? key, required this.link}) : super(key: key);

  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SvgPicture.asset(
        link,
        color: ColorsUtils.kGreyColor,
        height: 20.0,
        width: 16.0,
      ),
    );
  }
}
