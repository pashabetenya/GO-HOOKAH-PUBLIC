import 'index.dart';

class ContactsTitle extends StatelessWidget {
  const ContactsTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kGreyColor,
          fontWeight: FontWeight.w400,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
