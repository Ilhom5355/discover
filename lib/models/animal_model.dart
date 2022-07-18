import 'package:flutter/material.dart';

class AnimalModel {
  final String id;
  final String country;
  final String image;
  final Color color;
  final String mapImage;
  final bool blackWhiteContainer;
  final double posRignt;
  final double posTop;
  final String animalName;

  AnimalModel({
    required this.id,
    required this.country,
    required this.image,
    required this.color,
    required this.mapImage,
    this.blackWhiteContainer = false,
    required this.posRignt,
    required this.posTop,
    required this.animalName,
  });
}

List<String> status_list = ["All", "Birds", "fishes", "Reptile"];
