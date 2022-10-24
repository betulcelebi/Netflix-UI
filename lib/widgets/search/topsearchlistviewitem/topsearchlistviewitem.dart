import 'package:flutter/material.dart';
import 'package:netflixapp/pages/search.dart';
import 'package:netflixapp/provider/search/searchprovider.dart';
import 'package:netflixapp/widgets/videoplayer/videoplayer.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:video_player/video_player.dart';

class TopSearchListViewItem extends StatefulWidget {
  TopSearchListViewItem({super.key, required this.videoUrl});
  String videoUrl;

  @override
  State<TopSearchListViewItem> createState() => _TopSearchListViewItemState();
}

class _TopSearchListViewItemState extends State<TopSearchListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, item, widget) {
        return Container(
          margin: EdgeInsets.only(top: 0.3.h),
          width: 100.w,
          height: 10.h,
          decoration: BoxDecoration(color: Color(0xff424242)),
          child: Row(
            children: [
              Container(
                width: 20.h,
                height: 10.h,
                child: Image.asset('${item.getImage(item.index!)}',
                    fit: BoxFit.cover),
              ),
              Container(
                padding: EdgeInsets.all(2.h),
                alignment: Alignment.centerLeft,
                width: 20.h,
                height: 10.h,
                child: Text(
                  '${item.getName(item.index!)}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 2.5.h,
                      fontWeight: FontWeight.w600),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          VideoPlayers(videoUrl: this.widget.videoUrl),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 3.h),
                  //padding: EdgeInsets.(2.h),
                  alignment: Alignment.centerLeft,
                  width: 5.h,
                  height: 10.h,
                  child: Image.asset(
                    'assets/search/playbutton.png',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
