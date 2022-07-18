import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/animal_provider/animal_provider.dart';

class BigAnimalImage extends StatelessWidget {
  final int index;

  const BigAnimalImage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final animalPro = Provider.of<AnimalProvider>(context);

    return Positioned(
      left: 20,
      right: -275,
      top: 20,
      child: animalPro.animal_items[index] == animalPro.animal_items[0]
          ? Container(
            height: size.height * 0.70,
            width: size.width * 2,
            decoration: BoxDecoration(
              //color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(animalPro.animal_items[index].image),
              ),
            ),
          )
          : Container(
      margin: const EdgeInsets.only(top: 130, right: 50, left: 140),
      height: size.height * 0.45,
      width: size.width * 2,
      decoration: BoxDecoration(
        //color: Colors.red,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(animalPro.animal_items[index].image),
        ),
      ),
    )
    ,
    );
  }
}
