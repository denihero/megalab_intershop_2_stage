import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/features/our_service/presentation/bloc/our_service_cubit.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/features/widgets/shimmer/gate_shimmer_card.dart';

import '../../../widgets/card/gate_card.dart';

class OurServiceScreen extends StatefulWidget {
  const OurServiceScreen({Key? key}) : super(key: key);

  @override
  State<OurServiceScreen> createState() => _OurServiceScreenState();
}

class _OurServiceScreenState extends State<OurServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        AppString.ourServiceTitle,
                        style: Style.montserrat_16_700Black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      AppString.ourServiceDescription,
                      style: Style.montserrat_14_300Black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            BlocBuilder<OurServiceCubit, OurServiceState>(
              builder: (context, state) {
                if (state is OurServiceSuccess) {
                  final gate = state.ourService;
                  return SliverList(
                      delegate:
                          SliverChildBuilderDelegate(childCount: gate.length,
                              (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 15,
                      ),
                      child: GateCard(
                        gate: gate[index],
                      ),
                    );
                  }));
                } else if (state is OurServiceInitial) {
                  return const Text('Woooa');
                } else if (state is OurServiceLoading) {
                  return ListView.builder(
                      itemCount: 4,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child:
                              GeneralShimmerCard(width: 300.w, height: 200.h),
                        );
                      });
                }
                return const SizedBox();
              },
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 40.h,
                  ),
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
