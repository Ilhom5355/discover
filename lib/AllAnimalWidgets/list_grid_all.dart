import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../AboutAnimalWidgets/about_animal.dart';
import '../constants.dart';
import '../providers/animal_provider/animal_provider.dart';

class ListGridAll extends StatelessWidget {
  final int index;
  final double posRight;
  final double posTop;

  const ListGridAll({
    Key? key,
    required this.index,
    required this.posRight,
    required this.posTop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final animalPro = Provider.of<AnimalProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Container(
        height: size.height * 0.30,
        width: double.infinity,
        decoration: BoxDecoration(
          color: mapColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Container(
              height: size.height * 0.30,
              width: size.width * 0.50,
              decoration: BoxDecoration(
                color: animalPro.animal_items[index].color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.21,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      //color: Colors.yellow,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          animalPro.animal_items[index].mapImage,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/icons/maps-and-flags.svg",
                              height: 14,
                              color: Colors.white.withOpacity(0.7),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              animalPro.animal_items[index].country,
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // This black transparent window
            Container(
              height: size.height * 0.30,
              width: size.width * 0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Positioned(
              left: 170,
              top: -40,
              child: Container(
                height: 300,
                width: 225,
                decoration: BoxDecoration(
                  //color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(
                      animalPro.animal_items[index].image,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
               right: animalPro.animal_items[index].posRignt, //posRight,
              top: animalPro.animal_items[index].posTop, //posTop
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.1),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.yellow.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 7,
                      width: 7,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 177,
              top: 150,
              child: animalPro.animal_items[index].blackWhiteContainer
                  ? Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(
                          0.2,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 27,
                            width: 27,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.9),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AboutAnimal(index: index),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
