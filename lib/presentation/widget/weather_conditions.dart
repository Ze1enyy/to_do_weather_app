import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherCondition extends StatelessWidget {
  const WeatherCondition(
      {required this.condition, required this.imageAsset, super.key});
  final String condition;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(imageAsset,
            height: 25,
            width: 25,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn)),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            condition,
            style: const TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
