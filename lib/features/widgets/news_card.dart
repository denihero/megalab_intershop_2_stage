
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/megalab_internship.dart';
import 'package:megacom_second_stage/navigation/route.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: GestureDetector(
        onTap: () {
          context.router.push(const NewsDetailScreenRoute());
        },
        child: Container(
          width: 280.w,
          height: 200.h,
          decoration: const BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/image/test1.png'),
            ),
          ),
          child: Align(
              alignment: Alignment.center,
              child: Text(
                  'РАСШИРЕНИЕ ДИЗАЙНА \nВОРОТ СТАДНАРТНОЙ СЕРИИ \nRSD01SC BIW',
                  textAlign: TextAlign.start,
                  style: Style.montserrat_10_800White)),
        ),
      ),
    );
  }
}
