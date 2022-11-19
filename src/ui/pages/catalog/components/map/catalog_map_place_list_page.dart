import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui' as ui;

import 'index.dart';

class CatalogMapPlaceListPage extends StatefulWidget {
  const CatalogMapPlaceListPage({Key? key}) : super(key: key);

  @override
  State<CatalogMapPlaceListPage> createState() =>
      _CatalogMapPlaceListPageState();
}

class _CatalogMapPlaceListPageState extends State<CatalogMapPlaceListPage> {
  static const CameraPosition position = CameraPosition(
    target: LatLng(53.904539, 27.561524),
    zoom: 11.8,
    tilt: 0,
    bearing: 0,
  );

  final Map<String, Marker> markers = {};

  late final Completer<GoogleMapController> _controller = Completer();
  late PageController pageController = PageController();

  Future<Uint8List> getBytesFromAsset(
      {required String path, required int width}) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo frame = await codec.getNextFrame();
    return (await frame.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  Future<void> onMapCreated(GoogleMapController controller) async {
    String value = await DefaultAssetBundle.of(context)
        .loadString('assets/styles/map_style.json');

    _controller.complete(controller);
    controller.setMapStyle(value);

    final Uint8List customMarker = await getBytesFromAsset(
      path: 'assets/images/map/frame.png',
      width: 45,
    );

    final places = await PlaceRepository().getHookahPlaces();

    setState(() {
      markers.clear();

      for (final place in places.listing) {
        final double latc = double.parse(place.lat);
        final double lonc = double.parse(place.lon);
        final marker = Marker(
          icon: BitmapDescriptor.fromBytes(customMarker),
          markerId: MarkerId(place.id.toString()),
          position: LatLng(latc, lonc),
          infoWindow: InfoWindow(
            title: place.title,
            snippet: place.address,
          ),
        );
        markers[place.title] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsUtils.kBackgroundColor,
        title: const TitleText(title: 'Кальянные: Карта'),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: position,
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            onMapCreated: onMapCreated,
            zoomGesturesEnabled: true,
            markers: markers.values.toSet(),
            compassEnabled: false,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 40.0),
              child: Expanded(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: 0,
                    maxHeight: MediaQuery.of(context).size.height * 0.20,
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          _goToThePlace(
                            location: const LatLng(53.929740, 27.598539),
                          );
                        },
                        child: CardPlace(
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CatalogDetailHookahPlace(
                                    image:
                                        'QFBPFiXHr0N7JwJY4VHRoy84hL5uP5dh.jpg',
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
                                    vkontakte:
                                        'vk.com/hookahplace_minsk_kolasa',
                                    instagram:
                                        'instagram.com/hookahplace_kolasa/',
                                    facebook:
                                        'facebook.com/hookahplaceminsk.kolasa/',
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToThePlace({required LatLng location}) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 154.0,
        target: location,
        tilt: 45.0,
        zoom: 16.4,
      ),
    ));
  }
}
