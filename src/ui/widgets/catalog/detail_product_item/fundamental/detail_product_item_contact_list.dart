import 'index.dart';

class DetailProductItemContactList extends StatelessWidget {
  const DetailProductItemContactList({
    Key? key,
    required this.street,
    required this.phone,
    required this.site,
  }) : super(key: key);

  final String street;
  final String phone;
  final String site;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        if (street.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Contacts(
              link: 'assets/icons/home/location_on.svg',
              description: street,
              title: 'Адрес: ',
              onTap: () {},
            ),
          ),
        if (phone.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Contacts(
              link: 'assets/icons/home/phone.svg',
              description: phone,
              title: 'Телефон: ',
              onTap: () {
                launchUrl(Uri(scheme: 'tel', path: phone));
              },
            ),
          ),
        if (site.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Contacts(
              link: 'assets/icons/home/network.svg',
              description: site,
              title: 'Сайт: ',
              onTap: () {
                launchUrl(Uri(scheme: 'HTTPS', path: site));
              },
            ),
          ),
      ],
    );
  }
}
