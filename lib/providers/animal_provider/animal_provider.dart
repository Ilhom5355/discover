import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/animal_model.dart';

class AnimalProvider with ChangeNotifier {
  final List<AnimalModel> _animal_items = [
    AnimalModel(
      id: "a1",
      country: "Trinidad\nAn Tobago",
      image: "assets/images/bird-removebg-preview.png",
      color: mapColor1,
      mapImage: "assets/images/map_map.png",
      blackWhiteContainer: true,
      posRignt: 200.0,
      posTop: 90.0,
      animalName: "Hummingbird"
    ),
    AnimalModel(
      id: "a2",
      country: "Kenya",
      image: "assets/images/karkedon.png",
      color: mapColor2,
      mapImage: "assets/images/map_col.png",
      blackWhiteContainer: false,
      posRignt: 270.0,
      posTop: 30.0,
      animalName: "Karkerdon"
    ),
    // AnimalModel(
    //     id: "a3",
    //     country: "Kenya",
    //     image: "assets/images/olmaxon-removebg-preview.png",
    //     color: mapColor2,
    //     mapImage: "assets/images/map_col.png",
    //     blackWhiteContainer: false,
    //     posRignt: 300.0,
    //     posTop: 15.0,
    //     animalName: "Karkerdon"
    // ),
  ];

  List<AnimalModel> get animal_items {
    return [..._animal_items];
  }
}
