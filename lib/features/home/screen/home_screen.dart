
import 'package:flutter/material.dart';
import 'package:hobanovel/features/home/services/home_services.dart';
import 'package:hobanovel/features/home/widgets/carousel_image.dart';
import 'package:hobanovel/features/home/widgets/novels_completed.dart';
import 'package:hobanovel/features/home/widgets/novels_featured.dart';
import 'package:hobanovel/features/home/widgets/novels_emerging.dart';
import 'package:hobanovel/features/home/widgets/novels_lastest.dart';
import 'package:hobanovel/features/home/widgets/novels_popular.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  dynamic novelsEmerging;
  dynamic novelsFeature;
  dynamic novelsPopular;
  final HomeServices homeServices = HomeServices();

  void fetchNovelsEmerging() async {
    novelsEmerging = await homeServices.getNovelsEmerging(
      context: context, take: 10, skip: 0);
    setState(() {});
  }

  void fetchNovelsFeature() async {
    novelsFeature = await homeServices.getNovelsEmerging(
      context: context, take: 10, skip: 0);
    setState(() {});
  }

  void fetchNovelsPopular() async {
    novelsPopular = await homeServices.getNovelsEmerging(
      context: context, take: 9, skip: 0);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNovelsEmerging();
    fetchNovelsFeature();
    fetchNovelsPopular();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          elevation: 0.0,
          backgroundColor:Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "HOBANOVEL",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
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
      body: ListView(
        children: [
          CarouselImage(),
          NovelsEmerging(novels: novelsEmerging),
          NovelsFeatured(novels: novelsFeature),
          NovelsPopular(novels: novelsPopular),
          NovelsLastest(),
          NovelsCompleted(),
        ],
      ),
    );
  }
}
          