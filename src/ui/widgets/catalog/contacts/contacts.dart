import 'index.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    Key? key,
    required this.link,
    required this.description,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String link;
  final String description;
  final String title;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContactsImage(link: link),
            ContactsTitle(title: title),
            Expanded(
              child: ContactsText(description: description, onTap: onTap),
            ),
          ],
        ),
      ],
    );
  }
}
