import 'package:flutter/material.dart';

class SearchProvider with ChangeNotifier {
  int? index;

  List items = [
    {
      "image": "assets/search/citation.png",
      "name": "Citation",
      "video": "https://youtu.be/1eMAYynMc1w"
    },
    {
      "image": "assets/search/oloture.png",
      "name": "Oloture",
      "video": "https://youtu.be/hR7eGhTnOxw"
    },
    {
      "image": "assets/search/setup.png",
      "name": "The Setup",
      "video": "https://youtu.be/QqXVuaygsRU"
    },
    {
      "image": "assets/search/breakingbad.png",
      "name": "Breaking Bad",
      "video": "https://youtu.be/HhesaQXLuRY"
    },
    {
      "image": "assets/search/ozark.png",
      "name": "Ozark",
      "video": "https://youtu.be/mE9loBHbDrY"
    },
    {
      "image": "assets/search/governor.png",
      "name": "The Governor",
      "video": "https://youtu.be/W3q248TQGLk"
    },
    {
      "image": "assets/search/excellency.png",
      "name": "Your Excellency",
      "video": "https://youtu.be/pAMUldixCu4"
    },
  ];

  String getImage(int index) {
    return items[index]['image'].toString();
  }

  String getName(int index) {
    return items[index]['name'].toString();
  }

  String getVideo(int index) {
    return items[index]['video'].toString();
  }
}
