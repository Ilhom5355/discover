import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/animal_model.dart';

class StatusButtons extends StatefulWidget {
  StatusButtons({
    Key? key,
  }) : super(key: key);

  var selectIndex = 0;

  @override
  State<StatusButtons> createState() => _StatusButtonsState();
}

class _StatusButtonsState extends State<StatusButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          status_list.length,
              (index) => Container(
            alignment: Alignment.center,
            height: 30,
            width: 60,
            decoration: BoxDecoration(
              color: widget.selectIndex == index
                  ? statusColor
                  : Colors.transparent,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Text(
              status_list[index],
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.white.withOpacity(0.8)),
            ),
          ),
        ),
      ),
    );
  }
}