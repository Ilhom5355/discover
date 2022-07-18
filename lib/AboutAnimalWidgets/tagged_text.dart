import 'package:discover/providers/animal_provider/animal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class TaggedText extends StatelessWidget {

  final int index;

  const TaggedText({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animalPro = Provider.of<AnimalProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
      ),
      child: Row(
        children: [
          Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
                color: Colors.yellowAccent.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                    color: Colors.amber[500],
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: defaultPadding / 4),
          Text(
            animalPro.animal_items[index].animalName,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
          ),
        ],
      ),
    );
  }
}
