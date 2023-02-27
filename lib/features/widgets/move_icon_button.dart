import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/color.dart';

class MoveIconButton extends StatelessWidget {
  const MoveIconButton({Key? key, required this.icon, required this.onPressed}) : super(key: key);

  final Widget icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Palette.black.withOpacity(0.15), // Button color
        child: InkWell(
          onTap: onPressed,
          child: SizedBox(
            width: 42,
            height: 42,
            child: icon
          ),
        ),
      ),
    );
  }
}
