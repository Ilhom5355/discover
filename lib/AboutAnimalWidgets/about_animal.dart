import 'package:discover/constants.dart';
import 'package:flutter/material.dart';
import 'about_animal_text.dart';
import 'big_animal_image.dart';
import 'bottom_two_button.dart';
import 'curve_container.dart';
import 'next_indicator.dart';
import 'right_brown_container.dart';
import 'skip_button.dart';
import 'tagged_text.dart';

class AboutAnimal extends StatelessWidget {
  final int index;
  const AboutAnimal({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                const Color(0xFF585147).withOpacity(0.1),
                Colors.grey.withOpacity(0.3),
                Colors.grey.withOpacity(0.9)
              ],
            ),
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    //color: Colors.transparent,
                    //color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const NextIndicator(),
                        const CurveContainer(),
                        const SizedBox(height: defaultPadding * 2),
                        TaggedText(index: index),
                        const SizedBox(height: defaultPadding / 2),
                        const AboutAnimalText(),
                      ],
                    ),
                  ),
                  const RightBrownContainer(),
                  // Big Image ---------------------------------------
                  BigAnimalImage(index: index),
                  const SkipButton(),
                  const BottomTwoButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


