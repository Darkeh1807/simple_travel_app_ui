import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/places_card.dart';

class MostViewedPlaces extends StatelessWidget {
  const MostViewedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        primary: true,
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: PlacesCard(
              isFavourite: true,
            ),
          );
        },
      ),
    );
  }
}
