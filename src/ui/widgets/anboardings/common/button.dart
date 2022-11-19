import 'index.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPressed,
    required this.color,
    required this.title,
  }) : super(key: key);

  final Function()? onPressed;
  final Color? color;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ButtonTheme(
          minWidth: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.06,
          child: MaterialButton(
            onPressed: onPressed,
            color: color!,
            textColor: Colors.white,
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Text(
              title!,
              style: TextStyle(
                fontFamily: 'SF Pro Text',
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                color: ColorsUtils.kDarkColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
