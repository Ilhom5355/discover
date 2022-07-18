import 'package:flutter/material.dart';
import '../constants.dart';

class NextIndicator extends StatelessWidget {
  const NextIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding,
      ),
      child: Container(
        width: size.width * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 5,
              width: 25,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
