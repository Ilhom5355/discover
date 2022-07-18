import 'package:flutter/material.dart';
import '../constants.dart';

class AboutAnimalText extends StatelessWidget {
  const AboutAnimalText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      //color: Colors.red,
      width: size.width * 0.55,
      child: Text(
        "Lorem Ipsum is simply dummy text of the printing"
            " and typesetting industry. Lorem Ipsum has"
            " been the industry's standard dummy text"
            " ever since the 1500s, when an unknown"
            " printer took a galley of type and",
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
          fontSize: 14,
          color: Colors.white.withOpacity(0.6),
        ),
      ),
    );
  }
}