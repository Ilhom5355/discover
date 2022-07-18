import 'package:flutter/material.dart';

import '../constants.dart';

class SkipButton extends StatelessWidget {

  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 320,
      child: InkWell(
        onTap: () {
          print("Press Skip Button");
        },
        child: Chip(
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding / 2,
          ),
          label: Text(
            "Skip",
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16,
                ),
          ),
          backgroundColor: Colors.grey.withOpacity(0.2),
        ),
      ),
    );
  }
}
