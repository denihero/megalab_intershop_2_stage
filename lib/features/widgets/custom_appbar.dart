import 'package:flutter/material.dart';
import 'package:megacom_second_stage/megalab_internship.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Image.asset(
        Pictures.logoPng,
        width: 200,
        height: 200,
        color: Colors.black,
      ),
      actions: [
        GestureDetector(
          onTap: () {
            scaffoldKey.currentState?.openEndDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Pictures.menu,
              width: 30,
              height: 30,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size(0, 100);
}
