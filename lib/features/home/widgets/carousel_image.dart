
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:hobanovel/features/novel_detail/screen/novel_detail_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int activeIndex = 0;

  void navigateToNovelDetailScreen() {
    Navigator.pushNamed(context, NovelDetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 0, right: 0, bottom: 10.0),
      child: Column(
        children: [
          CarouselSlider(
            items: GlobalVariables.carouselImages.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: navigateToNovelDetailScreen,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox.fromSize(
                          child: Image.network(
                            i,
                            fit: BoxFit.cover,
                            height: 200,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 200,
              autoPlay: true,
              // aspectRatio: 5.0,
              autoPlayInterval: const Duration(seconds: 10),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 1.0),
          buildIndicator()
        ],
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: GlobalVariables.carouselImages.length,
    effect: const WormEffect(
      dotWidth: 20,
      dotHeight: 5,
      radius: 0,
    ),
  );
}