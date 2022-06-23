import 'package:flutter/material.dart';

class Category {
  final String name;
  final IconData icon;

  Category({required this.name, required this.icon});
}

class Meal {
  final String imageUrl;
  final String name;
  final String time;
  final String rating;
  final String level;

  Meal(
      {required this.imageUrl,
      required this.name,
      required this.time,
      required this.rating,
      required this.level});
}
