import 'package:flutter/material.dart';
import 'package:netflixapp/provider/home/home_provider.dart';
import 'package:netflixapp/widgets/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, HomeProvider hp, child) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/home_bg.png",
                        fit: BoxFit.fill,
                      )),
                  Positioned(
                    top: 10.0,
                    child: SizedBox(
                      width: 100.w,
                      height: 13.h,
                      //color: Colors.red,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 8.h,
                              width: 17.w,
                              // color: Colors.amber,
                              child: Image.asset(
                                "assets/logo.png",
                                fit: BoxFit.fill,
                              )),
                          SizedBox(
                            //color: Colors.amber,
                            width: 75.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                customText("TV Shows"),
                                customText("Movies"),
                                customText("My List"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 100.0,
                    bottom: 20.0,
                    left: 120.0,
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/top.png",
                          width: 25,
                        ),
                        SizedBox(
                          width: .2.w,
                        ),
                        const Text(
                          "#2 in Nigeria Today",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      SizedBox(
                        height: .7.h,
                      ),
                      const Text(
                        "My List",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 10.0),
                      // alignment: Alignment.center,
                      width: 30.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: const Color(0xffC4C4C4)),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          const Text(
                            "Play",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  Column(
                    children: [
                      const Icon(
                        Icons.info_outline,
                        size: 30.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 0.7.h,
                      ),
                      const Text(
                        "Info",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 25.0, bottom: 10.0),
                child: Text(
                  "Previews",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15.h,
                //color: Colors.blue,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: hp.img.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      width: 27.w,
                      height: 16.w,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: Image.asset(
                        hp.img[index],
                        fit: BoxFit.contain,
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  top: 25.0,
                ),
                child: Text(
                  "Continue Watching for Emenalo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        //bottomNavigationBar: const BottomNavBarWidget(),
      );
    });
  }

  customText(String text) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400),
    );
  }
}
