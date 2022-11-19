import 'index.dart';

class DetailProductItemEmployee extends StatelessWidget {
  const DetailProductItemEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Line(),
        Padding(
          padding: const EdgeInsets.only(top: 25.0, right: 16.0, left: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              DetailProductItemEmployeeTitle(),
              Padding(
                padding: EdgeInsets.only(top: 6.0, bottom: 10.0),
                child: DetailProductItemEmployeeList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
