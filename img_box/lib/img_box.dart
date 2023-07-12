library img_box;

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class ImageBoxing extends StatelessWidget {
  ImageBoxing({super.key});

  List<String> imgLink = [
    "https://www.pexels.com/search/reflection/",
    "https://www.shutterstock.com/explore/royalty-free-images",
    "https://pixabay.com/images/search/nature/",
    "https://www.pexels.com/search/beautiful/",
    "https://www.istockphoto.com/photos/india",
    "https://www.befunky.com/features/blur-image/",
    "https://pixabay.com/images/search/background/"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) {
        return Image.network(imgLink.elementAt(index));
      },
      itemCount: imgLink.length,
      options: CarouselOptions(autoPlay: true),
    );
  }
}
