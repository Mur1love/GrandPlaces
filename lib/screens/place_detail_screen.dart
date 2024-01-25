import 'package:flutter/material.dart';
import 'package:grand_places/models/place.dart';

class PlaceDetailScree extends StatelessWidget {
  const PlaceDetailScree({super.key});

  @override
  Widget build(BuildContext context) {
    Place place = ModalRoute.of(context)?.settings.arguments as Place;
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
    );
  }
}