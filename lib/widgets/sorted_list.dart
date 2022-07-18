import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../AllAnimalWidgets/list_grid_all.dart';
import '../providers/animal_provider/animal_provider.dart';

class SortedList extends StatelessWidget {
  const SortedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final animalPro = Provider.of<AnimalProvider>(context);
    return Column(
      children: List.generate(
        animalPro.animal_items.length,
            (index) => ListGridAll(
          index: index,
          posRight: animalPro.animal_items[index].posRignt,
          posTop: animalPro.animal_items[index].posTop,
        ),
      ),
    );
  }
}