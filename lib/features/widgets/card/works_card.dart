import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/widget/server_image.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';

class WorksCard extends StatelessWidget {
  const WorksCard({Key? key, required this.ourWorks}) : super(key: key);

  final ContentModel ourWorks;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: ServerImage(
          pictureUrl: '${ImageSettings.ourWorksImage}${ourWorks.image}',
        ));
  }
}
