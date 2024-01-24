import 'package:flutter/material.dart';
import 'package:grand_places/models/place.dart';

class GrandPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemCount {
    return _items.length;
  }

  Place itemByIndex (int index) {
    return _items[index];
  }

}