import 'index.dart';

class Employee extends StatelessWidget {
  const Employee({
    Key? key,
    required this.name,
    required this.time,
    required this.link,
  }) : super(key: key);

  final String name;
  final String time;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.16,
        width: MediaQuery.of(context).size.width * 0.31,
        decoration: BoxDecoration(
          color: ColorsUtils.kLightDarkColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EmployeeImage(link: link),
            EmployeeName(name: name),
            EmployeeTime(time: time),
          ],
        ),
      ),
    );
  }
}
