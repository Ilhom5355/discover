import 'package:flutter/material.dart';
import '../constants.dart';

class CurveContainer extends StatelessWidget {
  const CurveContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding * 8,
      ),
      child: Container(
        height: size.height * 0.30,
        width: size.width * 0.40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(defaultPadding * 7),
            bottomLeft: Radius.circular(defaultPadding * 5),
            bottomRight: Radius.circular(defaultPadding * 5),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.20,
              width: size.width * 0.22,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(140),
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                border: Border.all(
                  width: 3,
                  color: Colors.amber.withOpacity(0.7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
