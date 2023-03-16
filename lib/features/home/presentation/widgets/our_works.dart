import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/our_works/presentation/bloc/our_work_cubit.dart';
import 'package:megacom_second_stage/features/our_works/presentation/bloc/our_work_cubit.dart';
import 'package:megacom_second_stage/features/widgets/works_card.dart';

class OurWorks extends StatelessWidget {
  const OurWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Наши работы',
          style: Style.montserrat_16_700Black,
        ),
        const SizedBox(
          height: 20,
        ),
        BlocBuilder<OurWorkCubit, OurWorkState>(
          builder: (context, state) {
            if (state is OurWorkSuccess) {
              final ourWorks = state.ourWorksModel;
              return CarouselSlider.builder(
                itemCount: ourWorks.content?.length ?? 0,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  pauseAutoPlayOnManualNavigate: false,
                  viewportFraction: 0.65,
                  initialPage: 2,
                ),
                itemBuilder: (BuildContext context, int itemIndex, _) {
                  return WorksCard(ourWorks: ourWorks.content![itemIndex]);
                },
              );
            } else if (state is OurWorkError) {
              return Text('Error');
            } else if (state is OurWorkLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return const SizedBox();
          },
        )
      ],
    );
  }
}
