import 'package:flutter/material.dart';
import '../constants.dart';

class BottomTwoButton extends StatelessWidget {
  const BottomTwoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding * 1.5,
          bottom: defaultPadding,
        ),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(defaultPadding / 1.5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Donate"),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white.withOpacity(0.3),
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 4,
                      vertical: defaultPadding * 0.75,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.amber[500],
                    borderRadius: BorderRadius.circular(defaultPadding / 1.5),
                  ),
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
