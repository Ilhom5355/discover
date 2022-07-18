import 'package:flutter/material.dart';

import '../AllAnimalWidgets/app_bar_button.dart';
import '../AllAnimalWidgets/discover_text.dart';
import '../AllAnimalWidgets/status_buttons.dart';
import 'sorted_list.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF585147).withOpacity(0.1),
            Colors.grey.withOpacity(0.3),
            Colors.grey.withOpacity(0.9)
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarButton(),
          const DiscoverText(),
          StatusButtons(),
          const SortedList(),
        ],
      ),
    );
  }
}