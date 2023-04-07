import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/core/color.dart';
import 'package:megacom_second_stage/core/network/image_settings.dart';
import 'package:megacom_second_stage/features/gate_type/presentation/widget/short_date_card.dart';
import 'package:megacom_second_stage/features/gate_type/presentation/widget/special_advantage_card.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

class GateTypeScreen extends StatefulWidget {
  const GateTypeScreen({Key? key, required this.gateType}) : super(key: key);

  final OurServiceModel gateType;

  @override
  State<GateTypeScreen> createState() => _GateTypeScreenState();
}

class _GateTypeScreenState extends State<GateTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 170.h),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: CustomNavigatorMenu(
                  iconColor: Colors.white,
                ),
              ),
            ],
            flexibleSpace: Stack(
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.only(bottomRight: Radius.circular(60)),
                  child: Container(
                    height: 200.h,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          '${ImageSettings.imageApi}${widget.gateType.image}',
                          errorListener: () => const Icon(Icons.error),
                        ),
                      ),
                    ),
                    child: Center(
                        child: Text(
                      widget.gateType.name ?? '',
                      textAlign: TextAlign.center,
                      style: Style.montserrat_16_800White,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      Pictures.logoPng,
                      fit: BoxFit.contain,
                      width: 85,
                      height: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  widget.gateType.description ?? '',
                  style: Style.montserrat_14_300Black,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    AppString.ourGateType,
                    style: Style.montserrat_16_800White
                        .copyWith(color: Palette.black),
                  ),
                ),
              ),
            ])),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    childCount: widget.gateType.gates?.length ?? 0,
                    (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: ShorGateCard(
                  gate: widget.gateType.gates?[index],
                ),
              );
            })),
            SliverList(
                delegate: SliverChildListDelegate([
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                AppString.specialAdvantagesTitle,
                style: Style.montserrat_16_700Black,
              )),
            ])),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: widget.gateType.advantages?.length ?? 0,
                  (context, index) {
                final advantage = widget.gateType.advantages;
                return SpecialAdvantageCard(
                    orderId: index + 1,
                    title: advantage?[index].title ?? '',
                    description: advantage?[index].text ?? '');
              }),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SubmitApplication(),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
