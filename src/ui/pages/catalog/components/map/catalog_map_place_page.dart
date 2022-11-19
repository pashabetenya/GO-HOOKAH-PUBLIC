import 'package:flutter/services.dart' show rootBundle;
import 'dart:ui' as ui;

import 'index.dart';

class CatalogMapPlacePage extends StatefulWidget {
  const CatalogMapPlacePage({
    Key? key,
    required this.title,
    required this.location,
    required this.street,
    required this.image,
    required this.rate,
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
    required this.phone,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final LatLng location;
  final String street;
  final String image;
  final int rate;
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
  final String phone;
  final Function() onTap;

  @override
  State<CatalogMapPlacePage> createState() => _CatalogMapPlacePageState();
}

class _CatalogMapPlacePageState extends State<CatalogMapPlacePage> {
  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  final Map<String, Marker> _markers = {};
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

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

    _customInfoWindowController.googleMapController = controller;

    _controller.complete(controller);
    controller.setMapStyle(value);

    final Uint8List customMarker = await getBytesFromAsset(
      path: 'assets/images/map/frame.png',
      width: 45,
    );

    setState(() {
      _markers.clear();
      final marker = Marker(
        icon: BitmapDescriptor.fromBytes(customMarker),
        markerId: MarkerId(widget.title),
        position: widget.location,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            CardPlace(
              image: widget.image,
              title: widget.title,
              rate: widget.rate,
              onTap: widget.onTap,
              open_1: widget.open_1,
              closed_1: widget.closed_1,
              open_2: widget.open_2,
              closed_2: widget.closed_2,
              open_3: widget.open_3,
              closed_3: widget.closed_3,
              open_4: widget.open_4,
              closed_4: widget.closed_4,
              open_5: widget.open_5,
              closed_5: widget.closed_5,
              open_6: widget.open_6,
              closed_6: widget.closed_6,
              open_7: widget.open_7,
              closed_7: widget.closed_7,
              phone: widget.phone,
              street: widget.street,
            ),
            widget.location,
          );
        },
      );
      _markers[widget.title] = marker;
    });
  }

  late final Completer<GoogleMapController> _controller = Completer();

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
            zoomControlsEnabled: false,
            mapToolbarEnabled: false,
            initialCameraPosition: CameraPosition(
              target: widget.location,
              zoom: 11.8,
              tilt: 0,
              bearing: 0,
            ),
            zoomGesturesEnabled: true,
            onMapCreated: onMapCreated,
            compassEnabled: false,
            markers: _markers.values.toSet(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 105.0),
              child: CustomInfoWindow(
                controller: _customInfoWindowController,
                height: MediaQuery.of(context).size.height * 0.23,
                width: MediaQuery.of(context).size.width * 0.80,
                offset: 35.0,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToThePlace,
        label: Text(
          'К заведению!',
          style: TextStyle(
            fontFamily: 'SF Pro Text',
            color: ColorsUtils.kLightDarkColor,
            fontWeight: FontWeight.w600,
            fontSize: 15.0,
          ),
        ),
        backgroundColor: ColorsUtils.kYellowColor,
      ),
    );
  }

  Future<void> _goToThePlace() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        bearing: 154.0,
        target: widget.location,
        tilt: 45.0,
        zoom: 16.4,
      ),
    ));
  }
}
