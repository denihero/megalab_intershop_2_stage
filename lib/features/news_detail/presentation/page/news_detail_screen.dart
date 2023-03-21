import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/bloc/detail_news_cubit.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:shimmer/shimmer.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<DetailNewsCubit>().getDetailNews(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: BlocBuilder<DetailNewsCubit, DetailNewsState>(
            builder: (context, state) {
              if (state is DetailNewsSuccess) {
                final detailNews = state.detailNews;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        detailNews.title ?? '',
                        style: Style.montserrat_16_700Black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        detailNews.text ?? '',
                        style: Style.montserrat_14_300Black,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: detailNews.contentImage ?? '',
                        errorWidget: (context, error, _) => Container(
                            width: 310.w,
                            height: 230.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Icon(Icons.error)),
                        progressIndicatorBuilder: (context, _, __) =>
                            Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[200]!,
                              child: Container(
                                  width: 310.w,
                                  height: 230.h,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: const Icon(Icons.error)),
                            )),
                    SizedBox(
                      height: 10.h,
                    ),
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl: detailNews.contentImage ?? '',
                      errorWidget: (context, error, _) => Container(
                          width: 310.w,
                          height: 230.h,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Icon(Icons.error)),
                        progressIndicatorBuilder: (context, _, __) =>
                            Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[200]!,
                              child: Container(
                                  width: 310.w,
                                  height: 230.h,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                  ),
                                  child: const Icon(Icons.error)),
                            )
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const LastNews(),
                    SizedBox(
                      height: 30.h,
                    ),
                    const SubmitApplication(),
                    SizedBox(
                      height: 30.h,
                    ),
                    const Footer()
                  ],
                );
              } else if (state is DetailNewsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is DetailNewsError) {
                return const Text('Error');
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
