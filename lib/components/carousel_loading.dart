import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselLoading extends StatelessWidget {
  const CarouselLoading({Key? key}) : super(key: key);

  //const CarouselLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            // aspectRatio: 2.0,
            // enlargeCenterPage: true,
            viewportFraction: 1.0,
          ),
          
          items: [
            // container with decoration image
            Container(
              child: Image.asset('assets/images/sent0.jpeg'),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Container(
              child: Image.asset('assets/images/sent1.jpeg'),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
