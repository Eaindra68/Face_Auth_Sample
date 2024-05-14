import 'package:flutter/material.dart';

class AppBarWhiteCorner extends StatelessWidget {
  const AppBarWhiteCorner({super.key, this.color});
  final Color? color;

  static const double kHeight = 60;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).scaffoldBackgroundColor,
            offset: const Offset(0, 2),
          )
        ],
      ),
    );
  }
}
