import 'dart:io';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String? address;

  const PlaceLocation({
    required this.latitude,
    required this.longitude,
    this.address,
  });

  LatLng toLatlng() {
    // ignore: unnecessary_this
    return LatLng(this.latitude, this.longitude);
  }
}

class Place {
  final String id;
  final String title;
  final PlaceLocation? location;
  final File image;

  Place(
      {required this.id,
      required this.title,
      required this.image,
      required this.location});
}
