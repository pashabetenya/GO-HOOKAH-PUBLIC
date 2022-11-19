import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui' as ui;

import 'index.dart';

class CatalogMapStoreListPage extends StatefulWidget {
  const CatalogMapStoreListPage({Key? key}) : super(key: key);

  @override
  State<CatalogMapStoreListPage> createState() =>
      _CatalogMapStoreListPageState();
}

class _CatalogMapStoreListPageState extends State<CatalogMapStoreListPage> {
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

    final places = await StoreRepository().getHookahStores();

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
        title: const TitleText(title: 'Магазины: Карта'),
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
                          _goToTheStore(
                              location: const LatLng(53.926508, 27.517851));
                        },
                        child: CardPlace(
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
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const CatalogDetailHookahStore(
                                    image:
                                        'AKuPHVHVnoQurYJO5vUX7QLqQBqW9e1R.JPG',
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

  Future<void> _goToTheStore({required LatLng location}) async {
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
