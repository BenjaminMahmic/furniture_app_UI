import 'package:flutter/material.dart';

enum ItemType {
  chair,
  bed,
  table,
}

class Model {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final double rate;
  final List<Color> avaliableColors;
  final ItemType type;

  Model({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rate,
    required this.avaliableColors,
    required this.type,
  });
}
