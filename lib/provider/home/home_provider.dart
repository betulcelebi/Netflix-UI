import 'package:flutter/cupertino.dart';

import '../../pages/comingsoon.dart';
import '../../pages/home.dart';
import '../../pages/search.dart';

class HomeProvider extends ChangeNotifier {
  int currentIndex = 0;
  List img = [
    "assets/1.png",
    "assets/2.png",
    "assets/3.png",
    "assets/4.png",
  ];
  List pages = [
    const HomePage(),
    const SearchPage(),
    const ComingSoonPage(),
    const HomePage(),
    const SearchPage()
  ];

  changePage() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const SearchPage();
      case 2:
        return const ComingSoonPage();
      case 3:
        return const HomePage();
      case 4:
        return const SearchPage();
    }
  }

  bottomToPage(int value) {
    currentIndex = value;
    notifyListeners();
  }
}
