import 'package:flutter/material.dart';

String uri = 'http://<yourip>:3000';

class GlobalVariables {

  // URL Image
  static const urlImage = "https://res.cloudinary.com/djtbntzq2/image/upload/";

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
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/3cacea3d8088a68296107169710d5f4b_mzv2le.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/0cbed5e61027a26648aee3b609c02343_vebvvj.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412735/hobanovel/carousel/866d5ee0d1f660771d665e2a86a4961d_c6lad0.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412735/hobanovel/carousel/3247e2a49468941c8d63d69049f7443a_v0cakr.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412735/hobanovel/carousel/3247e2a49468941c8d63d69049f7443a_v0cakr.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/1b1c87dfcdac3e6efb037421a6049d09_xgzgen.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/cd00f3055d2c4b6040ab3ba52d0981a8_g9ukzy.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/0a055e0a2f923a60093211d659cafd2e_co0xqq.webp",
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

  static const dataGenres = {
    "2": "Tiên Hiệp",
    "3": "Huyền Huyễn",
    "4": "Khoa Huyễn",
    "5": "Võng Du",
    "6": "Đô Thị",
    "7": "Đồng Nhân",
    "8": "Dã Sử",
    "9": "Cạnh Kỹ",
    "11": "Huyền Nghi",
    "12": "Kiếm Hiệp",
    "20": "Kỳ Ảo",
  };

  static const contentChapter = "";
}
