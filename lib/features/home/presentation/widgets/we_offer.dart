
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/pictures.dart';
import 'package:megacom_second_stage/core/string.dart';
import 'package:megacom_second_stage/core/style.dart';
import 'package:megacom_second_stage/features/widgets/move_icon_button.dart';

import '../../../widgets/gate_card.dart';

class WeOffer extends StatefulWidget {
  const WeOffer({Key? key}) : super(key: key);

  @override
  State<WeOffer> createState() => _WeOfferState();
}

class _WeOfferState extends State<WeOffer> {

  late final CarouselController _buttonCarouselController;

  @override
  void initState() {
    _buttonCarouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(Pictures.weOffer))),
      child: Column(
        children: [
          Text(
            AppString.weOffer,
            style: Style.montserrat_16_700Black,
          ),
          const SizedBox(
            height: 10,
          ),
          CarouselSlider.builder(
            carouselController: _buttonCarouselController,
            itemCount: 4,
            options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: false,
              viewportFraction: 0.79,
              enlargeFactor: 2,
              aspectRatio: 2.1,
              initialPage: 2,
            ),
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) {
              return const GateCard();
            },
          ),
          const SizedBox(
            height: 15,
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
                  onPressed: () {},
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
          )
        ],
      ),
    );
  }
}
