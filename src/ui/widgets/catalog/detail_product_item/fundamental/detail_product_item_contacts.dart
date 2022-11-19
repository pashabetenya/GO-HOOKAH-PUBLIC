import 'index.dart';

class DetailProductItemContacts extends StatelessWidget {
  const DetailProductItemContacts({
    Key? key,
    required this.street,
    required this.phone,
    required this.site,
    required this.vkontakte,
    required this.instagram,
    required this.facebook,
  }) : super(key: key);

  final String street;
  final String phone;
  final String site;
  final String vkontakte;
  final String instagram;
  final String facebook;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const DetailProductItemContactTitle(),
          DetailProductItemContactList(
            street: street,
            phone: phone,
            site: site,
          ),
          const DetailProductItemNetworkTitle(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                DetailProductItemNetworkList(
                  vkontakte: vkontakte,
                  instagram: instagram,
                  facebook: facebook,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
