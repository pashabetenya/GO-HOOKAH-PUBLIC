import 'index.dart';

class CatalogDetailHookahPlace extends StatelessWidget {
  const CatalogDetailHookahPlace({
    Key? key,
    required this.title,
    required this.image,
    required this.street,
    required this.rate,
    required this.description,
    required this.phone,
    required this.site,
    required this.city,
    required this.vkontakte,
    required this.instagram,
    required this.facebook,
    required this.open_1,
    required this.closed_1,
    required this.open_2,
    required this.closed_2,
    required this.open_3,
    required this.closed_3,
    required this.open_4,
    required this.closed_4,
    required this.open_5,
    required this.closed_5,
    required this.open_6,
    required this.closed_6,
    required this.open_7,
    required this.closed_7,
  }) : super(key: key);

  final String title;
  final String image;
  final String street;
  final int rate;
  final String description;
  final String phone;
  final String site;
  final String city;
  final String vkontakte;
  final String instagram;
  final String facebook;
  final String open_1;
  final String closed_1;
  final String open_2;
  final String closed_2;
  final String open_3;
  final String closed_3;
  final String open_4;
  final String closed_4;
  final String open_5;
  final String closed_5;
  final String open_6;
  final String closed_6;
  final String open_7;
  final String closed_7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsUtils.kBackgroundColor,
        title: TitleText(title: title),
        elevation: 0.6,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FundamentalDetailProductItem(
                  title: title,
                  image: image,
                  rate: rate,
                  city: city,
                  description: description,
                  street: street,
                  phone: phone,
                  site: site,
                  vkontakte: vkontakte,
                  instagram: instagram,
                  facebook: facebook,
                  open_1: open_1,
                  closed_1: closed_1,
                  open_2: open_2,
                  closed_2: closed_2,
                  open_3: open_3,
                  closed_3: closed_3,
                  open_4: open_4,
                  closed_4: closed_4,
                  open_5: open_5,
                  closed_5: closed_5,
                  open_6: open_6,
                  closed_6: closed_6,
                  open_7: open_7,
                  closed_7: closed_7,
                ),
                const AdditionalDetailProductItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
