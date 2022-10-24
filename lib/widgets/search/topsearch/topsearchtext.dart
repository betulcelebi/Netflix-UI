import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopSearchTextWidget extends StatefulWidget {
  const TopSearchTextWidget({super.key});

  @override
  State<TopSearchTextWidget> createState() => _TopSearchTextWidgetState();
}

class _TopSearchTextWidgetState extends State<TopSearchTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(top: 2.w),
        padding: EdgeInsets.only(left: 2.w),
        alignment: Alignment.centerLeft,
        width: 55.w,
        height: 5.h,
        // decoration: BoxDecoration(
        //   color: Colors.red
        // ),
        child: Text(
          'Top Searches',
          style: TextStyle(
            color: Colors.white,
            fontSize: 8.w,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}