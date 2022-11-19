import 'index.dart';

class PlaceList extends StatelessWidget {
  const PlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 2,
      itemBuilder: (context, index) {
        return ProductItem(
          image: 'QFBPFiXHr0N7JwJY4VHRoy84hL5uP5dh.jpg',
          title: 'HookahPlace Yakuba Kolasa',
          rate: 4,
          street: 'ул. Якуба Коласа, 42',
          open_1: '10:00',
          open_2: '10:00',
          open_3: '10:00',
          open_4: '10:00',
          open_5: '10:00',
          open_6: '10:00',
          open_7: '10:00',
          closed_1: '19:30',
          closed_2: '19:30',
          closed_3: '19:30',
          closed_4: '19:30',
          closed_5: '19:30',
          closed_6: '19:30',
          closed_7: '19:30',
          phone: '"+375 (29) 341-01-01"',
          onMap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CatalogMapPlacePage(
                    image: 'QFBPFiXHr0N7JwJY4VHRoy84hL5uP5dh.jpg',
                    title: 'HookahPlace Yakuba Kolasa',
                    rate: 4,
                    street: 'ул. Якуба Коласа, 42',
                    open_1: '10:00',
                    open_2: '10:00',
                    open_3: '10:00',
                    open_4: '10:00',
                    open_5: '10:00',
                    open_6: '10:00',
                    open_7: '10:00',
                    closed_1: '19:30',
                    closed_2: '19:30',
                    closed_3: '19:30',
                    closed_4: '19:30',
                    closed_5: '19:30',
                    closed_6: '19:30',
                    closed_7: '19:30',
                    phone: '"+375 (29) 341-01-01"',
                    location: const LatLng(53.929740, 27.598539),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const CatalogDetailHookahPlace(
                              image: 'QFBPFiXHr0N7JwJY4VHRoy84hL5uP5dh.jpg',
                              title: 'HookahPlace Yakuba Kolasa',
                              rate: 4,
                              street: 'ул. Якуба Коласа, 42',
                              open_1: '10:00',
                              open_2: '10:00',
                              open_3: '10:00',
                              open_4: '10:00',
                              open_5: '10:00',
                              open_6: '10:00',
                              open_7: '10:00',
                              closed_1: '19:30',
                              closed_2: '19:30',
                              closed_3: '19:30',
                              closed_4: '19:30',
                              closed_5: '19:30',
                              closed_6: '19:30',
                              closed_7: '19:30',
                              phone: '"+375 (29) 341-01-01"',
                              description:
                                  'HookahPlace Lounge Bar» – кальянная с уникальным форматом отдыха, включающим в себя профессиональную и слаженную работу всех подразделений.\r\n\r\nВ «HookahPlace Lounge Bar» тщательно подобранный кальянный парк, который позволит учесть вкусы и предпочтения наших гостей. В команду кальянных мастеров набраны только настоящие специалисты, которые посвятят каждого гостя в кальянную культуру.',
                              site: 'hookah-place.by',
                              city: 'Минск',
                              vkontakte: 'vk.com/hookahplace_minsk_kolasa',
                              instagram: 'instagram.com/hookahplace_kolasa/',
                              facebook: 'facebook.com/hookahplaceminsk.kolasa/',
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
                  return const CatalogDetailHookahPlace(
                    image: 'QFBPFiXHr0N7JwJY4VHRoy84hL5uP5dh.jpg',
                    title: 'HookahPlace Yakuba Kolasa',
                    rate: 4,
                    street: 'ул. Якуба Коласа, 42',
                    open_1: '10:00',
                    open_2: '10:00',
                    open_3: '10:00',
                    open_4: '10:00',
                    open_5: '10:00',
                    open_6: '10:00',
                    open_7: '10:00',
                    closed_1: '19:30',
                    closed_2: '19:30',
                    closed_3: '19:30',
                    closed_4: '19:30',
                    closed_5: '19:30',
                    closed_6: '19:30',
                    closed_7: '19:30',
                    phone: '"+375 (29) 341-01-01"',
                    description:
                        'HookahPlace Lounge Bar» – кальянная с уникальным форматом отдыха, включающим в себя профессиональную и слаженную работу всех подразделений.\r\n\r\nВ «HookahPlace Lounge Bar» тщательно подобранный кальянный парк, который позволит учесть вкусы и предпочтения наших гостей. В команду кальянных мастеров набраны только настоящие специалисты, которые посвятят каждого гостя в кальянную культуру.',
                    site: 'hookah-place.by',
                    city: 'Минск',
                    vkontakte: 'vk.com/hookahplace_minsk_kolasa',
                    instagram: 'instagram.com/hookahplace_kolasa/',
                    facebook: 'facebook.com/hookahplaceminsk.kolasa/',
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
