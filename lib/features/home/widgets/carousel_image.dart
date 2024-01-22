
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hobanovel/constants/global_variables.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class CarouselImage extends StatefulWidget {
  const CarouselImage({super.key});

  @override
  State<CarouselImage> createState() => _CarouselImageState();
}

class _CarouselImageState extends State<CarouselImage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(5.0),
      child: Column(
        children: [
          CarouselSlider(
            items: GlobalVariables.carouselImages.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.fromSize(
                        child: Image.network(
                          i,
                          fit: BoxFit.cover,
                          height: 250,
                          
                        ),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 250,
              autoPlay: true,
              aspectRatio: 2.0,
              autoPlayInterval: const Duration(seconds: 2),
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
    effect: const ExpandingDotsEffect(
      dotWidth: 10,
      dotHeight: 10,
      radius: 5,
    ),
  );
}