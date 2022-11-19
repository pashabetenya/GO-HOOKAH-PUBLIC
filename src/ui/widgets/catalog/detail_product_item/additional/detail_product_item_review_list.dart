import 'index.dart';

class DetailProductItemReviewList extends StatelessWidget {
  const DetailProductItemReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List people = ['Паша', 'Влад', 'Саша', 'Стас', 'Никита', 'Александр'];

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

    final List text = [
      'Отличное заведение для решения вопросов в непринуждённой обстановке. Приятное обслуживание, приятная музыка.',
      'Очень уютно и атмосферно. Понравилось обслуживание и чуткость официантов. Удобная посадка и приятная музыка. Советую!',
      'Кальян на уровне, приятная атмосфера, дружелюбное отношение, быстрое обслуживание. Я рекомендую к посещению, вы будете приятно удивлены.',
      'Отличное обслуживание, приятный персонал, все очень вкусно! Все чисто, быстро. Кальяны супер. Все понравилось.',
      'Отличное заведение для решения вопросов в непринуждённой обстановке. Приятное обслуживание, приятная музыка.',
      'Кальян на уровне, приятная атмосфера, дружелюбное отношение, быстрое обслуживание. Я рекомендую к посещению, вы будете приятно удивлены.',
    ];

    final List rate = [4, 5, 5, 4, 3, 4];

    final List time = [
      '12.10.2022',
      '12.10.2022',
      '18.10.2022',
      '19.10.2022',
      '04.11.2022',
      '06.11.2022',
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        child: ListView.builder(
          itemCount: people.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
                Reviews(
                  link: image[index],
                  name: people[index],
                  text: text[index],
                  rate: rate[index],
                  time: time[index],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
