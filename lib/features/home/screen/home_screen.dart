
import 'package:flutter/material.dart';
import 'package:hobanovel/features/home/services/home_services.dart';
import 'package:hobanovel/features/home/widgets/carousel_image.dart';
import 'package:hobanovel/features/home/widgets/novels_completed.dart';
import 'package:hobanovel/features/home/widgets/novels_featured.dart';
import 'package:hobanovel/features/home/widgets/novels_emerging.dart';
import 'package:hobanovel/features/home/widgets/novels_lastest.dart';
import 'package:hobanovel/features/home/widgets/novels_popular.dart';
import 'package:hobanovel/models/novel.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Novel>? novelsEmerging;
  late List<Novel>? novelsFeature;
  late List<Novel>? novelsPopular;
  late List<Novel>? novelsLastest;
  late List<Novel>? novelsCompleted;
  final HomeServices homeServices = HomeServices();

  void fetchNovelsEmerging() async {
    final List<Novel>? result = await homeServices.getNovelsEmerging(
      context: context, take: 10, skip: 0);
    if (mounted) {
      setState(() {
        novelsEmerging = result;
      });
    }
  }

  void fetchNovelsFeature() async {
    final List<Novel>? result = await homeServices.getNovelsEmerging(
      context: context, take: 10, skip: 0);
    if (mounted) {
      setState(() {
        novelsFeature = result;
      });
    }
  }

  void fetchNovelsPopular() async {
    final List<Novel>? result = await homeServices.getNovelsEmerging(
      context: context, take: 9, skip: 0);
    if (mounted) {
      setState(() {
        novelsPopular = result;
      });
    }
  }

  void fetchNovelsLastest() async {
    final List<Novel>? result = await homeServices.getNovelsEmerging(
      context: context, take: 10, skip: 0);
    if (mounted) {
      setState(() {
        novelsLastest = result;
      });
    }
  }

  void fetchNovelsCompleted() async {
    final List<Novel>? result = await homeServices.getNovelsEmerging(
      context: context, take: 9, skip: 0);
    if (mounted) {
      setState(() {
        novelsCompleted = result;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    novelsEmerging = [];
    novelsFeature = [];
    novelsPopular = [];
    novelsLastest = [];
    novelsCompleted = [];
    fetchNovelsEmerging();
    fetchNovelsFeature();
    fetchNovelsPopular();
    fetchNovelsLastest();
    fetchNovelsCompleted();
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
          NovelsLastest(novels: novelsLastest),
          NovelsCompleted(novels: novelsCompleted),
        ],
      ),
    );
  }
}
          