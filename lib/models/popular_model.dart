import 'package:flutter/material.dart';

class PopularModel {
  String name;
  String iconpath;
  String level;
  String duration;
  String calorie;
  bool boxIsSelected;
  Color get boxColor => boxIsSelected ? Color.fromARGB(255, 152, 82, 16) : Color.fromARGB(255, 254, 191, 54);

  PopularModel({
    required this.name,
    required this.iconpath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxIsSelected
  });

  static List<PopularModel> getpopular() {
    List<PopularModel> popular = [];
    popular.add(
      PopularModel(
        name: 'Blueberry Pancake',
        iconpath: 'assets/icons/blueberry-pancake.svg',
        level: 'Easy',
        duration: '30 Minutes',
        calorie: '180 kcal',
        boxIsSelected: true
      ),
    );
    popular.add(
      PopularModel(
        name: 'Salmon Ngiri',
        iconpath: 'assets/icons/salmon-nigiri.svg',
        level: 'Hard',
        duration: '50 Minutes',
        calorie: '18 kcal',
        boxIsSelected: false
      ),
    );
    return popular;
  }
}