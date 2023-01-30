

import 'package:counter_app/core/utils/palette.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key, required this.onTap,required this.icon});

  final Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Palette.counterColor, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Palette.counterColor,
                  size: 40,
                ),
              ),
            ),
          );
  }
}