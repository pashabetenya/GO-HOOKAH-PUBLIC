import 'index.dart';

class Search extends StatelessWidget {
  const Search({Key? key, required this.onChanged}) : super(key: key);

  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 15.0, right: 16.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.95,
        child: TextField(
          style: TextStyle(color: ColorsUtils.kWhiteColor),
          cursorColor: ColorsUtils.kWhiteColor,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsUtils.kDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsUtils.kDarkColor),
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            ),
            filled: true,
            fillColor: ColorsUtils.kLightDarkColor,
            hintText: 'Напишите название..',
            hintStyle: TextStyle(
              fontFamily: 'SF Pro Display',
              color: ColorsUtils.kGreyColor,
              fontSize: 18.0,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: ColorsUtils.kGreyColor,
              size: 28.0,
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
