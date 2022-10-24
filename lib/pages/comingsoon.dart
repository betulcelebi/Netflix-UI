import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/provider/comingsoon/comingsoon_provider.dart';
import 'package:netflixapp/widgets/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({super.key});

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, CproviderItem item, widget) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 6.h, left: 1.6.h, bottom: 2.h),
                width: 16.h,
                height: 3.h,
                child: Row(
                  children: [
                    Container(
                      width: 2.5.h,
                      height: 2.5.h,
                      child: Image.asset("assets/comingsoon/bell.png"),
                      decoration: BoxDecoration(
                          color: Color(0xffF50914), shape: BoxShape.circle),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: '.SF Pro Display',
                            fontSize: 1.8.h,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 100.w,
                height: 20.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: item.movieList!.length,
                  itemBuilder: (context, index) {
                    return Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(left: 1.5.h),
                        width: 100.w,
                        height: 8.h,
                        decoration: BoxDecoration(color: Color(0xff424242)),
                        child: Row(
                          children: [
                            Image.asset("${item.movieList![index]["image"]}"),
                            Container(
                              margin: EdgeInsets.only(
                                left: 4.h,
                              ),
                              child: Container(
                                width: 15.h,
                                height: 6.h,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${item.movieList![index]["favorite"]}",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: '.SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 1.8.h),
                                    ),
                                    Text(
                                      "${item.movieList![index]["movie_name"]}",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF)
                                              .withOpacity(0.8),
                                          fontFamily: '.SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 1.8.h),
                                    ),
                                    Text(
                                      "${item.movieList![index]["date"]}",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.48),
                                          fontFamily: '.SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 1.3.h),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: double.infinity,
                height: 195,
                child: Image.asset(
                  "assets/comingsoon/main_movie.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 16.h,
                height: 5.h,
                margin: EdgeInsets.only(top: 2.5.h, left: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/comingsoon/bell-fill.png"),
                        Text(
                          "Remind Me",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.83),
                              fontSize: 1.4.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/comingsoon/share.png"),
                        Text(
                          "Share",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.83),
                              fontSize: 1.4.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.6.h, left: 1.5.h, bottom: 2.h),
                width: 44.h,
                height: 14.6.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Season 1 Coming December 14",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.83),
                          fontSize: 1.4.h,
                          fontFamily: '.SF Pro Display',
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "Castle & Castle",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 2.3.h,
                          fontFamily: '.SF Pro Display',
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.83),
                          fontSize: 1.35.h,
                          fontFamily: '.SF Pro Display',
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Steamy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 1.425.h,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Image.asset("assets/comingsoon/dot.png"),
                        Text(
                          "Soapy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.425.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset("assets/comingsoon/dot.png"),
                        Text(
                          "Slow Burn",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.425.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset("assets/comingsoon/dot.png"),
                        Text(
                          "Suspenseful",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.425.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset("assets/comingsoon/dot.png"),
                        Text(
                          "Teen",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.425.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w600),
                        ),
                        Image.asset("assets/comingsoon/dot.png"),
                        Text(
                          "Mystery",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.425.h,
                              fontFamily: '.SF Pro Display',
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 11.h,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.asset(
                        "assets/comingsoon/movie3.png",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: bottomNavigationBar(),
      );
    }));
  }
}
