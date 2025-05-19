import 'package:flutter/material.dart';

class StojoDetail {
  String image;
  String name;
  Color color;
  Color sideColor;
  int price;

  StojoDetail({
    required this.sideColor,
    required this.color,
    required this.image,
    required this.name,
    required this.price,
  });
}

List<StojoDetail> userItems = [
  StojoDetail(
    sideColor: const Color.fromARGB(255, 238, 169, 179),
    color: const Color.fromARGB(255, 216, 177, 140),
    image:
        "https://raw.githubusercontent.com/Melany-Chairez-1058/floreria_imagenes_app_flutter/refs/heads/main/three-removebg-preview.png",
    name: 'Bosque Arcoiris',
    price: 2000 ,
  ),
  StojoDetail(
    sideColor: const Color.fromARGB(255, 196, 122, 132),
    color: const Color.fromARGB(255, 212, 190, 220),
    image:
        "https://raw.githubusercontent.com/Melany-Chairez-1058/floreria_imagenes_app_flutter/refs/heads/main/b996e63a01e0e250ad4a6448ea8b8410-removebg-preview.png",
    name: 'Verde de Amor ',
    price: 1500 ,
  ),
  StojoDetail(
    sideColor: const Color.fromARGB(255, 105, 162, 159),
    color: const Color(0xFF9DB2B1),
    image:
        "https://raw.githubusercontent.com/Melany-Chairez-1058/floreria_imagenes_app_flutter/refs/heads/main/ed5496fc061e65dca5a62e78de039ef6-removebg-preview.png",
    name: 'Destello Lunar',
    price: 1200 ,
  ),
  StojoDetail(
    sideColor: const Color.fromARGB(255, 155, 210, 244),
    color: const Color.fromARGB(255, 195, 218, 233),
    image:
        "https://raw.githubusercontent.com/Melany-Chairez-1058/floreria_imagenes_app_flutter/refs/heads/main/ramo2-removebg-preview.png",
    name: 'Luz Solar',
    price: 960 ,
  ),
];
