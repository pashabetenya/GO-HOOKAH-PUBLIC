import 'index.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.link,
    required this.text,
    required this.onChange,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String link;
  final String text;
  final Function() onChange;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton.icon(
        icon: SvgPicture.asset(
          link,
          height: 18.0,
          width: 18.0,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          primary: ColorsUtils.kLightDarkColor,
        ),
        onPressed: onChange,
        label: Text(
          text,
          style: TextStyle(
            fontFamily: 'SF Pro Display',
            color: ColorsUtils.kWhiteColor,
            fontSize: 17.0,
          ),
        ),
      ),
    );
  }
}
