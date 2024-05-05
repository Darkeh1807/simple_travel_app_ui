import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/widgets/add_vertical_spacing.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 10,
          right: 10,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AddVerticalSpacing(value: 40),
                Text(
                  "Hi, David 👋",
                  style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Explore the world",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.freepik.com/free-photo/close-up-portrait-lovely-young-african-american-woman-with-curly-afro-haircut-smiling-with-happy-pleasant-expression-enjoying-winter-holidays-wearing-sweater-blue-wall_1258-35442.jpg?t=st=1714808325~exp=1714811925~hmac=00b76f78a1eccd7d0b6d6b9cbde52afde043ea218d68486fba32e07d61f73b1a&w=740",
              ),
            )
          ],
        ),
      ),
    );
  }
}
