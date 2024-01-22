import 'package:flutter/material.dart';

String uri = 'http://<yourip>:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938746/hoanovel/carousel/3cacea3d8088a68296107169710d5f4b_tmuyzq.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938747/hoanovel/carousel/1b1c87dfcdac3e6efb037421a6049d09_hwfrmb.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938747/hoanovel/carousel/0a055e0a2f923a60093211d659cafd2e_qkz36m.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938747/hoanovel/carousel/21df915c95e7b8a7961d7fc89a063c2a_y49wkg.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938746/hoanovel/carousel/0cbed5e61027a26648aee3b609c02343_f0so2o.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938746/hoanovel/carousel/725568f00ac83173921a07f2dd699edc_mjo0o6.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938746/hoanovel/carousel/866d5ee0d1f660771d665e2a86a4961d_fgrflc.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1705938746/hoanovel/carousel/0db66598a500225bf80482abbf686106_ulua6x.webp",
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assets/images/mobiles.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/essentials.jpeg',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/appliances.jpeg',
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.jpeg',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fashion.jpeg',
    },
  ];
}
