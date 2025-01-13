//import 'package:flutter/material.dart';

class Food  {
 final String name;
 final String description;
 final String imagePath;    // lib/images/p.png
 final double price;
 final FoodCategory category;
List<Addon> availableAddons; // list of addons

Food({
  required this.name,
  required this.description,
  required this.imagePath,
  required this.price,
  required this.category,
  required this.availableAddons,

  });
}

// food categories
// enum --> defines a collection of constants(related)--> easier to manage
enum FoodCategory{
  burgers,
  salads,
  sides,
  deserts,
  drinks,
}

// food addons اضافات
class Addon{
String name;
double price;

Addon({
  required this.name,
 required this.price,
 });
}