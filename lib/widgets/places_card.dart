import 'package:flutter/material.dart';
import 'package:travel_app_ui/constants/colors.dart';

class PlacesCard extends StatelessWidget {
  const PlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          color: AppColors.deepBlue,
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
            image: NetworkImage(
              "https://img.freepik.com/free-photo/beautiful-scenery-summit-mount-everest-covered-with-snow-white-clouds_181624-21317.jpg?t=st=1714826011~exp=1714829611~hmac=c0cafecdecaa9b403182a3cdf70735f473a72c74b179dfa087511b21fe332554&w=1060",
            ),
            fit: BoxFit.cover,
          )),
    );
  }
}
