import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/pages/home.dart';
import 'package:netflixapp/provider/home/home_provider.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class BottomNavBarWidget extends StatelessWidget {
  final HomeProvider? homeProvider;
  const BottomNavBarWidget({super.key, this.homeProvider});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: homeProvider!.currentIndex,
      onTap: (value) {
        homeProvider!.bottomToPage(value);
      },
      /*  currentIndex: selectedIndex,
        onTap: (value) => setState(() {
          selectedIndex = value;
        }), */
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color(0xff8C8787),
      selectedLabelStyle: GoogleFonts.aBeeZee(
          //color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600),
      unselectedLabelStyle: GoogleFonts.aBeeZee(
          //color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600),
      backgroundColor: const Color(0xff121212),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(top: 0.5.h),
            padding: EdgeInsets.only(bottom: 0.6.h),
            child: Image.asset(
              'assets/bottomnavigationbar/bottomhome.png',
              color: homeProvider!.currentIndex == 0
                  ? Colors.white
                  : Color(0xff8C8787),
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.only(top: 0.5.h, right: 0.5.h),
              padding: EdgeInsets.only(bottom: 0.6.h),
              child: Image.asset(
                'assets/bottomnavigationbar/bottomsearch.png',
                color: homeProvider!.currentIndex == 1
                    ? Colors.white
                    : Color(0xff8C8787),
              )),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                  width: 28,
                  margin: EdgeInsets.only(top: 0.7.h),
                  padding: EdgeInsets.only(bottom: 0.1.h),
                  child: Image.asset(
                    'assets/bottomnavigationbar/bottomcomingsoon.png',
                    color: homeProvider!.currentIndex == 2
                        ? Colors.white
                        : Color(0xff8C8787),
                  )),
              Positioned(
                left: 15,
                bottom: 20,
                //left: 15,
                child: Container(
                  width: 1.7.h,
                  height: 1.7.h,
                  child: Image.asset(
                    'assets/bottomnavigationbar/bottomcomingsoonnotification.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          label: 'Coming Soon',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.only(top: 0.3.h),
              padding: EdgeInsets.only(bottom: 0.6),
              child: Image.asset(
                'assets/bottomnavigationbar/bottomdownload.png',
                color: homeProvider!.currentIndex == 3
                    ? Colors.white
                    : Color(0xff8C8787),
              )),
          label: 'Downloads',
        ),
        BottomNavigationBarItem(
          icon: Container(
              margin: EdgeInsets.only(top: 0.8.h),
              padding: EdgeInsets.only(bottom: 0.9.h),
              child: Image.asset(
                'assets/bottomnavigationbar/bottommore.png',
                color: homeProvider!.currentIndex == 4
                    ? Colors.white
                    : Color(0xff8C8787),
              )),
          label: 'More',
        ),
      ],
    );
  }
}
