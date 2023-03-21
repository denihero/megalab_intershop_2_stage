import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Image.asset(
        Pictures.logoPng,
        fit: BoxFit.cover,
        color: Colors.black,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: CustomNavigatorMenu()
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(0, 55);
}
