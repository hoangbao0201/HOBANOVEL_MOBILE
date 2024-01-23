
import 'package:flutter/material.dart';
import 'package:hobanovel/features/home/widgets/carousel_image.dart';
import 'package:hobanovel/features/home/widgets/novels_completed.dart';
import 'package:hobanovel/features/home/widgets/novels_featured.dart';
import 'package:hobanovel/features/home/widgets/novels_emerging.dart';
import 'package:hobanovel/features/home/widgets/novels_lastest.dart';
import 'package:hobanovel/features/home/widgets/novels_popylar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor:Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "HOBANOVEL",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const Icon(Icons.search, color: Colors.black, size: 25),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: const [
            CarouselImage(),
            NovelsEmerging(),
            NovelsFeatured(),
            NovelsPopular(),
            NovelsLastest(),
            NovelsCompleted(),
          ],
        ),
      ),
    );
  }
}