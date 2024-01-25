import 'package:flutter/material.dart';
import 'package:grand_places/providers/grand_places.dart';
import 'package:grand_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Meus Lugares'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PlaceForm);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GrandPlaces>(context, listen: false).loadPlaces(),
        builder: (ctx, snapshot) => snapshot.connectionState ==
                ConnectionState.waiting
            ? const Center(child: CircularProgressIndicator())
            : Consumer<GrandPlaces>(
                child: const Center(
                  child: Text('Nenhum Local Cadastrado'),
                ),
                builder: (ctx, grandPlaces, ch) => grandPlaces.itemsCount == 0
                    ? ch!
                    : ListView.builder(
                        itemBuilder: (ctx, i) => ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                FileImage(grandPlaces.itemByIndex(i).image),
                          ),
                          title: Text(grandPlaces.itemByIndex(i).title),
                          subtitle: Text(grandPlaces
                              .itemByIndex(i)
                              .location!
                              .address as String),
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              AppRoutes.PlaceDetail,
                              arguments: grandPlaces.itemByIndex(i),
                            );
                          },
                        ),
                        itemCount: grandPlaces.itemsCount,
                      ),
              ),
      ),
    );
  }
}
