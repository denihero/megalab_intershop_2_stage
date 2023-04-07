import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Padding(
        padding: const EdgeInsets.only(left: 15,top: 5),
        child: Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: Image.asset(
              Pictures.logoPng,
              fit: BoxFit.contain,
              width: 85,
              height: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8),
          child: CustomNavigatorMenu()
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(0, 60);
}
