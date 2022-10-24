import 'package:flutter/cupertino.dart';

class CproviderItem with ChangeNotifier {
  List? movieList = [
    {
      "image": "assets/comingsoon/movie1.png",
      "favorite": "New Arrival",
      "movie_name": "El Chapo",
      "date": "Nov 6"
    },
    {
      "image": "assets/comingsoon/movie2.png",
      "favorite": "New Arrival",
      "movie_name": "Peaky Blinders",
      "date": "Nov 6"
    }
  ];
  List? movieType = [
    {"name": "Steamy", "icon": "assets/comingsoon/dot.png"},
    {"name": "Soapy", "icon": "assets/comingsoon/dot.png"},
    {"name": "Slow Burn", "icon": "assets/comingsoon/dot.png"},
    {"name": "Suspenseful", "icon": "assets/comingsoon/dot.png"},
    {"name": "Teen", "icon": "assets/comingsoon/dot.png"},
    {"name": "Mystery", "icon": "assets/comingsoon/dot.png"},
  ];
}
