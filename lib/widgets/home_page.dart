import 'package:flutter/material.dart';
import '../AllAnimalWidgets/bottom_navigation_menu.dart';

import 'background_container.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BackgroundContainer(),
        ),
      ),
      bottomNavigationBar: BottomNavigationMenu(),
    );
  }
}




