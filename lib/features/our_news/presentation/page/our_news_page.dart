import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megacom_second_stage/features/our_news/presentation/bloc/our_news_cubit.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/features/widgets/news_card.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class OurNewsScreen extends StatefulWidget {
  const OurNewsScreen({Key? key}) : super(key: key);

  @override
  State<OurNewsScreen> createState() => _OurNewsScreenState();
}

class _OurNewsScreenState extends State<OurNewsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        endDrawer: const CustomEndDrawer(),
        appBar: CustomAppBar(scaffoldKey: _scaffoldKey),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppString.ourCompanyNew,
                        style: Style.montserrat_16_700Black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppString.ourCompanyDescription,
                          style: Style.montserrat_14_300Black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      BlocBuilder<OurNewsCubit, OurNewsState>(
                        builder: (context, state) {
                          if (state is OurNewsSuccess) {
                            final news = state.ourNews;
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: news.content?.length ?? 0,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 15,
                                  ),
                                  child: NewsCard(
                                    news: news.content![index],
                                  ),
                                );
                              },
                            );
                          } else if (state is OurNewsLoading) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }

                          return const SizedBox();
                        },
                      ),
                      const SubmitApplication(),
                      const Footer()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
