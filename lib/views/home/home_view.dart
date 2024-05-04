import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/constants/fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Search places",
                  suffixIcon: Image.asset(
                    "assets/images/icon setting.png",
                  ),
                  hintStyle: GoogleFonts.roboto(),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.inputBorderColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    "Popular places",
                    style: GoogleFonts.poppins(
                      fontSize: AppFonts.mediumText,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "View all",
                    style: GoogleFonts.roboto(
                      fontSize: AppFonts.normalText,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TabBar(
                  indicator: BoxDecoration(
                      color: AppColors.indicatorColor,
                      borderRadius: BorderRadius.circular(20)),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: GoogleFonts.roboto(
                    color: AppColors.whiteColor,
                  ),
                  unselectedLabelColor: AppColors.unselectedTabColor,
                  tabs: const [
                    Text("Most Viewed"),
                    Text("Nearby"),
                    Text("Latest"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
