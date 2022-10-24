import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflixapp/provider/search/searchprovider.dart';
import 'package:netflixapp/widgets/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/search/textfield/textfield.dart';
import '../widgets/search/topsearch/topsearchtext.dart';
import '../widgets/search/topsearchlistviewitem/topsearchlistviewitem.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //int index = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(
      builder: (context, item, widget) {
        //item.index = index;
        return Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFieldWidget(),
                  TopSearchTextWidget(),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(0),
                    itemCount: item.items.length,
                    itemBuilder: (context, index) {
                      item.index = index;
                      return TopSearchListViewItem(
                        videoUrl: item.getVideo(index),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          //bottomNavigationBar: BottomNavBarWidget(),
        );
      },
    );
  }
}
