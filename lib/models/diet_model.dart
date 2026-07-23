import 'package:flutter/material.dart';

class DietModel {
  String name;
  String iconpath;
  String level;
  String duration;
  String calorie;
  bool viewIsSelected;

  DietModel({
    required this.name,
    required this.iconpath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.viewIsSelected
  });

  static List<DietModel> getdiets() {
    List<DietModel> diets = [];
    diets.add(
      DietModel(
        name: 'Honey Pancake',
        iconpath: 'assets/icons/honey-pancakes.svg',
        level: 'Easy',
        duration: '30 Minutes',
        calorie: '180 kcal',
        viewIsSelected: true
      ),
    );
    diets.add(
      DietModel(
        name: 'Canai bread',
        iconpath: 'assets/icons/canai-bread.svg',
        level: 'Hard',
        duration: '50 Minutes',
        calorie: '18 kcal',
        viewIsSelected: false
      ),
    );
    return diets;
  }
}