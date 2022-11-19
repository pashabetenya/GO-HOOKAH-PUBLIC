import 'index.dart';

class ContactsText extends StatelessWidget {
  const ContactsText({
    Key? key,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  final String description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        description,
        style: TextStyle(
          fontFamily: 'SF Pro Text',
          color: ColorsUtils.kWhiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 17.0,
        ),
      ),
    );
  }
}
