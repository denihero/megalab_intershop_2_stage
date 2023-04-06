import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key, required this.news}) : super(key: key);

  final ContentModel news;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: GestureDetector(
        onTap: () {
          context.router.push(NewsDetailScreenRoute(id: news.id ?? 0));
        },
        child: Container(
          width: 280.w,
          height: 200.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(Colors.black26, BlendMode.darken),
              image: CachedNetworkImageProvider(
                  '${ImageSettings.imageApi}${news.coverImage}'),
            ),
          ),
          child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(news.title ?? '',
                    textAlign: TextAlign.start,
                    style: Style.montserrat_10_800White),
              )),
        ),
      ),
    );
  }
}
