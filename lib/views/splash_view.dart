import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/views/home/home_nav_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    moveToHomeNav();
    super.initState();
  }

  Future<void> moveToHomeNav() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeNavView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.lightBlue,
                  AppColors.deepBlue,
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Travel",
                    style: GoogleFonts.lobster(
                      color: AppColors.whiteColor,
                      fontSize: 44,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset("assets/images/globe icon.png")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Find Your Dream\nDestionation With Us",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                  color: AppColors.whiteColor,
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
