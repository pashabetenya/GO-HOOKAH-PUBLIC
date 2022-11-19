import 'index.dart';

class Networks extends StatelessWidget {
  const Networks({
    Key? key,
    required this.text,
    required this.link,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final String link;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: GestureDetector(
        onTap: onTap,
        child: SvgPicture.asset(
          link,
          color: ColorsUtils.kWhiteColor,
          height: 21.0,
          width: 18.0,
        ),
      ),
    );
  }
}
