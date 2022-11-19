import 'index.dart';

class DetailProductItemEmployeeList extends StatelessWidget {
  const DetailProductItemEmployeeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List people = ['Паша', 'Влад', 'Саша', 'Стас', 'Никита', 'Александр'];

    final List time = [
      '12:00-18:00',
      '11:00-16:00',
      '14:00-19:00',
      '13:00-18:00',
      '11:00-16:00',
      '11:00-16:00',
    ];

    final List image = [
      'assets/memojies/frame_1.png',
      'assets/memojies/frame_2.png',
      'assets/memojies/frame_3.png',
      'assets/memojies/frame_4.png',
      'assets/memojies/frame_4.png',
      'assets/memojies/frame_5.png',
      'assets/memojies/frame_6.png',
      'assets/memojies/frame_7.png',
      'assets/memojies/frame_8.png',
      'assets/memojies/frame_9.png',
      'assets/memojies/frame_10.png',
      'assets/memojies/frame_11.png',
      'assets/memojies/frame_12.png',
      'assets/memojies/frame_13.png',
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.18,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: people.length,
          itemBuilder: (context, index) {
            return Employee(
              link: image[index],
              name: people[index],
              time: time[index],
            );
          },
        ),
      ),
    );
  }
}
