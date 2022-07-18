import 'package:flutter/material.dart';
import '../constants.dart';

class DiscoverText extends StatelessWidget {
  const DiscoverText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Discover",
            style: Theme.of(context).textTheme.headline5!.copyWith(
                color: discoverColor, fontWeight: FontWeight.w600),
          ),
          Text(
            "Protect our earth together",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}