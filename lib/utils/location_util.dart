// ignore_for_file: constant_identifier_names

const GOOGLE_API_KEY = 'AIzaSyC3C4rvohnDpgjaxkiwEfxgV55eDUr7LKA';
const GOOGLE_API_SIGNATURE = '_5laWamllcy-A0YeJY1_I1Ol-lk=';

class LocationUtil {
  static String generateLocationPreviewImage({
    double? latitude,
    double? longitude,
  }) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
  }
}