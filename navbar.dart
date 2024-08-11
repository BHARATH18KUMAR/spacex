// ignore_for_file: non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:space_app/constants/theme.dart';
import 'package:space_app/pages/newspage.dart';
import 'package:space_app/pages/rockets.dart';
import 'package:space_app/pages/homepage.dart';
import 'package:space_app/pages/mission.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int CurrentIndex = 0;
  final Screens = [
    const HomePage(),
    const MissionPage(),
    const RocketPage(),
    const NewsPage(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Sblack,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        onTap: (index) => setState(() => CurrentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/22031/home-icon-silhouette.svg',
              color: Swhite.withOpacity(0.5),
              height: 26,
              width: 26,
            ),
            activeIcon: SvgPicture.network(
              'https://www.svgrepo.com/show/22031/home-icon-silhouette.svg',
              color: Sorange,
              height: 26,
              width: 26,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/454779/astronomy-launch-rocket-2.svg',
              color: Swhite.withOpacity(0.5),
              height: 26,
              width: 26,
            ),
            activeIcon: SvgPicture.network(
              'https://www.svgrepo.com/show/454779/astronomy-launch-rocket-2.svg',
              color: Sorange,
              height: 26,
              width: 26,
            ),
            label: 'Dragon',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/404088/satellite.svg',
              color: Swhite.withOpacity(0.5),
              height: 26,
              width: 26,
            ),
            activeIcon: SvgPicture.network(
              'https://www.svgrepo.com/show/404088/satellite.svg',
              color: Sorange,
              height: 26,
              width: 26,
            ),
            label: 'Mission',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.network(
              'https://www.svgrepo.com/show/502421/news.svg',
              color: Swhite.withOpacity(0.5),
              height: 26,
              width: 26,
            ),
            activeIcon: SvgPicture.network(
              'https://www.svgrepo.com/show/502421/news.svg',
              color: Sorange,
              height: 26,
              width: 26,
            ),
            label: 'News',
          ),
        ],
      ),
    );
  }
}
