import 'package:flutter/material.dart';
import 'package:grand_places/screens/place_form_screen.dart';
import 'package:grand_places/screens/places_list_screen.dart';
import 'package:grand_places/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grand Places',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.indigo,
          secondary: Colors.amber,
        ),
      ),
      home: const PlacesListScreen(),
      routes: {
        AppRoutes.PlaceForm: (ctx) => const PlaceFormScreen(),
      },
    );
  }
}