import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/constants/fonts.dart';
import 'package:travel_app_ui/widgets/add_horizontal_spacing.dart';
import 'package:travel_app_ui/widgets/add_vertical_spacing.dart';

class PlaceDetailInfo extends StatelessWidget {
  final double height;
  final double width;

  const PlaceDetailInfo({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height, //75 for now
      width: width, //220 for now
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
          color: AppColors.darkShade,
          borderRadius: BorderRadius.circular(
            15,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Mount Fuji, Tokyo",
            style: GoogleFonts.roboto(
              color: AppColors.whiteColor,
              fontSize: AppFonts.mediumText,
            ),
          ),
          const AddVerticalSpacing(value: 10),
          Row(
            children: [
              Icon(
                Iconsax.location,
                color: AppColors.whiteColor.withOpacity(0.8),
              ),
              const AddHorizontalSpacing(value: 10),
              Text(
                "Tokyo, Japan",
                style: GoogleFonts.roboto(
                  color: AppColors.whiteColor.withOpacity(0.8),
                  fontSize: AppFonts.normalText,
                ),
              ),
              Expanded(child: Container()),
              Icon(
                Iconsax.star,
                color: AppColors.whiteColor.withOpacity(0.8),
              ),
              const AddHorizontalSpacing(value: 5),
              Text(
                "4.8",
                style: GoogleFonts.roboto(
                  color: AppColors.whiteColor.withOpacity(0.8),
                  fontSize: AppFonts.mediumText,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
