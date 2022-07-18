import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      color: const Color(0xFF979695),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.shopping_bag,
              color: Colors.white.withOpacity(0.8),
            ),
            SvgPicture.asset(
              "assets/icons/menu-svgrepo-com.svg",
              height: 18,
              color: Colors.white.withOpacity(0.8),
            ),
            //Icon(Icons.menu),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.home_filled,
                size: 19,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
