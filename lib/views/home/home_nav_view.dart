import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:travel_app_ui/constants/colors.dart';
import 'package:travel_app_ui/views/home/favorite_view.dart';
import 'package:travel_app_ui/views/home/home_view.dart';
import 'package:travel_app_ui/views/home/profile_view.dart';
import 'package:travel_app_ui/views/home/scheduled_view.dart';
import 'package:travel_app_ui/widgets/app_bar.dart';

class HomeNavView extends StatefulWidget {
  const HomeNavView({super.key});

  @override
  State<HomeNavView> createState() => _HomeNavViewState();
}

class _HomeNavViewState extends State<HomeNavView> {
  int currentIndex = 0;
  double constrainHeight(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(constrainHeight(context)),
        child: const CustomAppBar(),
      ),
      body: _pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColors.whiteColor,
        onDestinationSelected: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIndex: currentIndex,
        destinations: _navItems,
      ),
    );
  }
}

List<Widget> _pages = [
  const HomeView(),
  const ScheduledView(),
  const FavouriteView(),
  const ProfileView()
];

List<NavigationDestination> _navItems = [
  const NavigationDestination(
      icon: Icon(
        Iconsax.home,
      ),
      label: ''),
  const NavigationDestination(
    icon: Icon(
      Iconsax.clock,
    ),
    label: '',
  ),
  const NavigationDestination(
    icon: Icon(
      Iconsax.heart,
    ),
    label: '',
  ),
  const NavigationDestination(
    icon: Icon(
      CupertinoIcons.person,
      size: 26,
    ),
    label: '',
  )
];
