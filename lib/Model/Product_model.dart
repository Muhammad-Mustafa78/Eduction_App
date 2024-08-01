import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Graphic Design",
    image: "assets/graphics.png",
    color: const Color(0xFF71b8ff),
    courses: 16,
  ),
  Product(
    id: 2,
    title: "Programming",
    image: "assets/programming.png",
    color: const Color(0xFFff6374),
    courses: 22,
  ),
  Product(
    id: 3,
    title: "Finance",
    image: "assets/finance.png",
    color: const Color(0xFFffaa5b),
    courses: 15,
  ),
  Product(
    id: 4,
    title: "UI/Ux design",
    image: "assets/ux.png",
    color: const Color(0xFF9ba0fc),
    courses: 18,
  ),
];
