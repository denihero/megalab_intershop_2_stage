import 'package:flutter/material.dart';

class WorksCard extends StatelessWidget {
  const WorksCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/image/test2.png'))),
      ),
    );
  }
}
