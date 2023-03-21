import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:megacom_second_stage/features/our_works/presentation/bloc/our_work_cubit.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';
import 'package:megacom_second_stage/features/widgets/shimmer/gate_shimmer_card.dart';

import '../../../widgets/card/works_card.dart';

class OurWorkScreen extends StatefulWidget {
  const OurWorkScreen({Key? key}) : super(key: key);

  @override
  State<OurWorkScreen> createState() => _OurWorkScreenState();
}

class _OurWorkScreenState extends State<OurWorkScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
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
                        AppString.ourWorksTitle,
                        style: Style.montserrat_16_700Black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppString.ourWorksDescription,
                          style: Style.montserrat_14_300Black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      BlocBuilder<OurWorkCubit, OurWorkState>(
                        builder: (context, state) {
                          if (state is OurWorkSuccess) {
                            final ourWorks = state.ourWorksModel;
                            return ListView.builder(
                              itemCount: ourWorks.content?.length ?? 0,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: WorksCard(
                                    ourWorks: ourWorks.content![index],
                                  ),
                                );
                              },
                            );
                          } else if (state is OurWorkLoading) {
                            return ListView.builder(
                              itemCount: 4,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  child: GeneralShimmerCard(
                                    width: 310.w,
                                    height: 230.h,
                                  ),
                                );
                              },
                            );
                          } else if (state is OurWorkError) {
                            return const Center(
                              child: Text('Error'),
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
