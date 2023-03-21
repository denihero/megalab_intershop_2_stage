import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:megacom_second_stage/core/locator_service.dart';
import 'package:megacom_second_stage/features/our_service/presentation/bloc/our_service_cubit.dart';
import 'package:megacom_second_stage/features/widgets/custom_appbar.dart';
import 'package:megacom_second_stage/core/megalab_internship.dart';

import '../../../widgets/card/gate_card.dart';

class OurServiceScreen extends StatefulWidget {
  const OurServiceScreen({Key? key}) : super(key: key);

  @override
  State<OurServiceScreen> createState() => _OurServiceScreenState();
}

class _OurServiceScreenState extends State<OurServiceScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

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
                        AppString.ourServiceTitle,
                        style: Style.montserrat_16_700Black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          AppString.ourServiceDescription,
                          style: Style.montserrat_14_300Black,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      BlocBuilder<OurServiceCubit, OurServiceState>(
                        builder: (context, state) {
                          if (state is OurServiceSuccess) {
                            final gate = state.ourService;
                            return ListView.builder(
                                itemCount: gate.length,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: GateCard(
                                      gate: gate[index],
                                    ),
                                  );
                                });
                          } else if (state is OurServiceInitial) {
                            return const Text('Woooa');
                          } else if (state is OurServiceLoading) {
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
