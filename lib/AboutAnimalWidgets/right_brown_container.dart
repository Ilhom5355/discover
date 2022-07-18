import 'package:flutter/material.dart';
import '../constants.dart';

class RightBrownContainer extends StatelessWidget {
  const RightBrownContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      left: 270,
      right: 0,
      bottom: 0,
      top: 0,
      child: Container(
        height: double.infinity,
        width: size.width * 0.30,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [
              secondaryColor,
              secondaryColor.withOpacity(0.5),
              secondaryColor.withOpacity(0.5)
            ],
          ),
          color: secondaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(defaultPadding * 1.5),
            bottomLeft: Radius.circular(defaultPadding * 1.5),
          ),
        ),
      ),
    );
  }
}
