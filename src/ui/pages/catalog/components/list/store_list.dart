import 'index.dart';

class StoreList extends StatelessWidget {
  const StoreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProductItem(
          image: 'AKuPHVHVnoQurYJO5vUX7QLqQBqW9e1R.JPG',
          title: 'Narcos Hookah Shop',
          rate: 4,
          street: 'пр. Победителей, 65 (ТЦ Замок, 6-1 этаж)',
          open_1: '8:00',
          open_2: '8:00',
          open_3: '8:00',
          open_4: '8:00',
          open_5: '8:00',
          open_6: '8:00',
          open_7: '8:00',
          closed_1: '18:00',
          closed_2: '18:00',
          closed_3: '18:00',
          closed_4: '18:00',
          closed_5: '18:00',
          closed_6: '18:00',
          closed_7: '18:00',
          phone: '+375 (29) 589-98-99',
          onMap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CatalogMapStorePage(
                    image: 'AKuPHVHVnoQurYJO5vUX7QLqQBqW9e1R.JPG',
                    title: 'Narcos Hookah Shop',
                    rate: 4,
                    street: 'пр. Победителей, 65 (ТЦ Замок, 6-1 этаж)',
                    open_1: '8:00',
                    open_2: '8:00',
                    open_3: '8:00',
                    open_4: '8:00',
                    open_5: '8:00',
                    open_6: '8:00',
                    open_7: '8:00',
                    closed_1: '18:00',
                    closed_2: '18:00',
                    closed_3: '18:00',
                    closed_4: '18:00',
                    closed_5: '18:00',
                    closed_6: '18:00',
                    closed_7: '18:00',
                    phone: '+375 (29) 589-98-99',
                    location: const LatLng(53.926508, 27.517851),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const CatalogDetailHookahStore(
                              image: 'AKuPHVHVnoQurYJO5vUX7QLqQBqW9e1R.JPG',
                              title: 'Narcos Hookah Shop',
                              rate: 4,
                              street:
                                  'пр. Победителей, 65 (ТЦ Замок, 6-1 этаж)',
                              open_1: '8:00',
                              open_2: '8:00',
                              open_3: '8:00',
                              open_4: '8:00',
                              open_5: '8:00',
                              open_6: '8:00',
                              open_7: '8:00',
                              closed_1: '18:00',
                              closed_2: '18:00',
                              closed_3: '18:00',
                              closed_4: '18:00',
                              closed_5: '18:00',
                              closed_6: '18:00',
                              closed_7: '18:00',
                              phone: '+375 (29) 589-98-99',
                              description:
                                  'Наша команда курит кальян уже много лет и у нас всегда возникали проблемы с поиском и покупкой товаров для этого увлечения. Так и появилась идея открыть настоящий магазин, для любителей кальяна.',
                              site: 'narcos.by',
                              city: 'Минск',
                              vkontakte: 'vk.com/narcosby',
                              instagram: 'instagram.com/narcos.by/',
                              facebook: 'facebook.com/narcos.by/',
                            );
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            );
          },
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CatalogDetailHookahStore(
                    image: 'AKuPHVHVnoQurYJO5vUX7QLqQBqW9e1R.JPG',
                    title: 'Narcos Hookah Shop',
                    rate: 4,
                    street: 'пр. Победителей, 65 (ТЦ Замок, 6-1 этаж)',
                    open_1: '8:00',
                    open_2: '8:00',
                    open_3: '8:00',
                    open_4: '8:00',
                    open_5: '8:00',
                    open_6: '8:00',
                    open_7: '8:00',
                    closed_1: '18:00',
                    closed_2: '18:00',
                    closed_3: '18:00',
                    closed_4: '18:00',
                    closed_5: '18:00',
                    closed_6: '18:00',
                    closed_7: '18:00',
                    phone: '+375 (29) 589-98-99',
                    description:
                        'Наша команда курит кальян уже много лет и у нас всегда возникали проблемы с поиском и покупкой товаров для этого увлечения. Так и появилась идея открыть настоящий магазин, для любителей кальяна.',
                    site: 'narcos.by',
                    city: 'Минск',
                    vkontakte: 'vk.com/narcosby',
                    instagram: 'instagram.com/narcos.by/',
                    facebook: 'facebook.com/narcos.by/',
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
