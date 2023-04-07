import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/bloc/detail_news_cubit.dart';
import 'package:megacom_second_stage/features/news_detail/presentation/widget/server_image.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/features/widgets/shimmer/detail_news_shimmer_card.dart';
import 'package:photo_view/photo_view.dart';

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
        body: BlocBuilder<DetailNewsCubit, DetailNewsState>(
          builder: (context, state) {
            if (state is DetailNewsSuccess) {
              final detailNews = state.detailNews;
              return CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate(
                      [
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
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return openImage(
                                  '${ImageSettings.imageApi}${detailNews.contentImage}',
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: ServerImage(
                                pictureUrl:
                                    '${ImageSettings.imageApi}${detailNews.contentImage}',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return openImage(
                                    '${ImageSettings.imageApi}${detailNews.coverImage}',
                                  );
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: ServerImage(
                                    pictureUrl:
                                        '${ImageSettings.imageApi}${detailNews.coverImage}'),
                              ),
                            )),
                        SizedBox(
                          height: 30.h,
                        ),
                        const LastNews(showButton: false),
                        SizedBox(
                          height: 30.h,
                        ),
                        const SubmitApplication(),
                        SizedBox(
                          height: 30.h,
                        ),
                        const Footer()
                      ],
                    ),
                  ),
                ],
              );
            } else if (state is DetailNewsLoading) {
              return const DetailNewsShimmerCard();
            } else if (state is DetailNewsError) {
              return const Text('Error');
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  Widget openImage(String pictureUrl) {
    return Stack(
      children: [
        PhotoView(
          imageProvider: CachedNetworkImageProvider(pictureUrl),
          errorBuilder: (context, error, stackTrace) {
            return const Center(
              child: Text("Ошибка загрузки"),
            );
          },
          loadingBuilder: (context, event) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
