import 'package:counter_app/core/utils/palette.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key, this.onReset, this.onInfo});

  final Function()? onReset;
  final Function()? onInfo;

  @override
  Widget build(BuildContext context) {
    return AppBar(
          backgroundColor: Palette.themeColor,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 30,
                onPressed: onInfo,
                icon: const Icon(
                  Icons.info,
                  color: Palette.counterColor,
                ),
              ),
              const SizedBox(width: 50),
              IconButton(
                iconSize: 30,
                onPressed: onReset,
                icon: const Icon(
                  Icons.restart_alt,
                  color: Palette.counterColor,
                ),
              )
            ],
          ));
  }
}