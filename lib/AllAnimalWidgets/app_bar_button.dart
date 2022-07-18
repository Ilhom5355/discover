import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.05,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/icons/menu5.svg",
              color: Colors.white70,
              height: 16,
            ),
            SvgPicture.asset(
              "assets/icons/search2.svg",
              color: Colors.white70,
            ),
          ],
        ),
      ),
    );
  }
}