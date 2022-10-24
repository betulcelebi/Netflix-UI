import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h),
      padding: EdgeInsets.all(1.h),
      width: 100.w,
      height: 7.h,
      decoration: BoxDecoration(
        color: Color(0xff424242)
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.mic,size: 4.h,color: Color(0xffC4C4C4)),
            hintText: 'Search for a show, movie, genre, e.t.c',
            hintStyle: GoogleFonts.roboto(
              color: Color(0xffC4C4C4),
              fontSize: 2.h,
              fontWeight: FontWeight.w600,
              
            ),
            prefixIcon: Icon(Icons.search, size: 4.h,color: Color(0xffC4C4C4),),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff424242)))
          ),
        ),
      ),
      
    );
  }
}