import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconpath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconpath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    categories.add(
      CategoryModel(
        name: 'Salad',
        iconpath: 'assets/icons/plate.svg',
        boxColor: Colors.orange,
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Cake',
        iconpath: 'assets/icons/pancakes.svg',
        boxColor: Colors.blue,
      ),
    );
    categories.add(
      CategoryModel(
        name: 'Pie',
        iconpath: 'assets/icons/pie.svg',
        boxColor: Colors.green,
      ),
    );
    categories.add(
      CategoryModel(
        name: 'smoothie',
        iconpath: 'assets/icons/orange-snacks.svg',
        boxColor: Colors.pink,
      ),
    );
    return categories;
  }
}