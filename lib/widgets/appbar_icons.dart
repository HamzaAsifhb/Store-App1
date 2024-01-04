import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  AppBarIcon({Key? key, required this.function, required this.icon});

  final Function? function;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function!();
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).cardColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Icon(icon),
          ),
        ),
      ),
    );
  }
}