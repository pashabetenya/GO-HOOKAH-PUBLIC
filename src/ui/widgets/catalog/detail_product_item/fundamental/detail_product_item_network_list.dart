import 'index.dart';

class DetailProductItemNetworkList extends StatelessWidget {
  const DetailProductItemNetworkList({
    Key? key,
    required this.vkontakte,
    required this.instagram,
    required this.facebook,
  }) : super(key: key);

  final String vkontakte;
  final String instagram;
  final String facebook;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (vkontakte.isNotEmpty)
          Networks(
            link: 'assets/icons/home/vk.svg',
            text: vkontakte,
            onTap: () {
              launchUrl(Uri(scheme: 'HTTPS', path: vkontakte));
            },
          ),
        if (instagram.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Networks(
              link: 'assets/icons/home/insta.svg',
              text: instagram,
              onTap: () {
                launchUrl(Uri(scheme: 'HTTPS', path: instagram));
              },
            ),
          ),
        if (facebook.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Networks(
              link: 'assets/icons/home/facebook.svg',
              text: facebook,
              onTap: () {
                launchUrl(Uri(scheme: 'HTTPS', path: facebook));
              },
            ),
          ),
      ],
    );
  }
}
