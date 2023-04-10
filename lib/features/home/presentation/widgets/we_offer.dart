import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/home/data/model/advantage.dart';
import 'package:megacom_second_stage/features/our_service/presentation/bloc/our_service_cubit.dart';
import 'package:megacom_second_stage/features/widgets/move_icon_button.dart';
import 'package:megacom_second_stage/features/widgets/shimmer/gate_shimmer_card.dart';
import 'package:megacom_second_stage/navigation/route.dart';

import '../../../widgets/card/gate_card.dart';
import '../../../widgets/card/support_card.dart';

class WeOfferAndOurAdvantages extends StatefulWidget {
  const WeOfferAndOurAdvantages({Key? key}) : super(key: key);

  @override
  State<WeOfferAndOurAdvantages> createState() => _WeOfferAndOurAdvantagesState();
}

class _WeOfferAndOurAdvantagesState extends State<WeOfferAndOurAdvantages> {
  late final CarouselController _buttonCarouselController;

  @override
  void initState() {
    _buttonCarouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580.w,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(Pictures.weOffer),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            AppString.weOffer,
            style: Style.montserrat_16_700Black,
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<OurServiceCubit, OurServiceState>(
            builder: (context, state) {
              if (state is OurServiceSuccess) {
                final gate = state.ourService;
                return CarouselSlider.builder(
                  carouselController: _buttonCarouselController,
                  itemCount: gate.length,
                  options: CarouselOptions(
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.80.w,
                    enlargeFactor: 1,
                    aspectRatio: 2,
                    initialPage: 2,
                  ),
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return GateCard(gate: gate[itemIndex]);
                  },
                );
              } else if (state is OurServiceLoading) {
                return CarouselSlider.builder(
                  itemCount: 4,
                  options: CarouselOptions(
                    autoPlay: false,
                    enableInfiniteScroll: false,
                    viewportFraction: 0.80.w,
                    enlargeFactor: 1,
                    aspectRatio: 2,
                    initialPage: 2,
                  ),
                  itemBuilder: (BuildContext context, _, __) {
                    return GeneralShimmerCard(
                      width: 300.w,
                      height: 200.h,
                    );
                  },
                );
              } else if (state is OurServiceError) {
                return const Center(
                  child: Text('Errpr'),
                );
              }
              return const SizedBox();
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MoveIconButton(
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Palette.blue),
                onPressed: () {
                  _buttonCarouselController.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    side: const BorderSide(color: Colors.blue),
                  ),
                  onPressed: () {
                    context.router.push(const OurServiceScreenRoute());
                  },
                  child: Text('cмотреть все', style: Style.inter_14_400Black)),
              MoveIconButton(
                icon: Icon(Icons.arrow_forward_ios, color: Palette.blue),
                onPressed: () {
                  _buttonCarouselController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                },
              )
            ],
          ),
          SizedBox(
            height: 60.h,
          ),
          Text(
            AppString.ourAdvantages,
            style: Style.montserrat_16_700Black,
          ),
          SizedBox(
            height: 10.h,
          ),
          CarouselSlider.builder(
            itemCount: ShortInfo.ourAdvantages.length,
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              pauseAutoPlayOnManualNavigate: false,
              viewportFraction: 0.7.w,
              aspectRatio: 2.3,
              initialPage: 2,
            ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return SupportCard(
                help: ShortInfo.ourAdvantages[itemIndex],
              );
            },
          ),


        ],
      ),
    );
  }
}
