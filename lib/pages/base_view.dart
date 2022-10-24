import 'package:flutter/material.dart';
import 'package:netflixapp/provider/home/home_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/bottomnavigationbar/bottomnavigationbar.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: provider.changePage(),
          bottomNavigationBar: BottomNavBarWidget(homeProvider: provider),
        );
      },
    );
  }
}
