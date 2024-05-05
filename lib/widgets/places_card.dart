// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/widgets/place_detail_card.dart';

class PlacesCard extends StatefulWidget {
  bool isFavourite;
  PlacesCard({super.key, required this.isFavourite});

  @override
  State<PlacesCard> createState() => _PlacesCardState();
}

class _PlacesCardState extends State<PlacesCard> {
  @override
  Widget build(BuildContext context) {
    final placeCardWidth = MediaQuery.of(context).size.width * 0.7;
    //Staack widget in order to put other widgets on top of the container
    return InkWell(
      onTap: () {
        setState(() {
          widget.isFavourite = !widget.isFavourite;
        });
      },
      child: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.2,
            width: placeCardWidth,
            decoration: BoxDecoration(
                color: AppColors.deepBlue,
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://img.freepik.com/free-photo/beautiful-scenery-summit-mount-everest-covered-with-snow-white-clouds_181624-21317.jpg?t=st=1714826011~exp=1714829611~hmac=c0cafecdecaa9b403182a3cdf70735f473a72c74b179dfa087511b21fe332554&w=1060",
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
            left: placeCardWidth -
                80, //With this, there is no way the favourite icon goes out of the place card
            top: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.darkShade,
                borderRadius: BorderRadius.circular(255),
              ),
              child: Center(
                child: widget.isFavourite
                    ? const Icon(
                        Iconsax.heart5,
                        color: Colors.amber,
                      )
                    : const Icon(
                        Iconsax.heart,
                        color: AppColors.whiteColor,
                      ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: placeCardWidth * .08,
            child: const PlaceDetailCard(
              height: 75,
              width: 220,
            ),
          )
        ],
      ),
    );
  }
}
