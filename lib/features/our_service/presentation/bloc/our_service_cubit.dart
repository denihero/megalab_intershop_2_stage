import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:megacom_second_stage/features/our_service/data/model/our_service_model.dart';
import 'package:megacom_second_stage/features/our_service/domain/usecases/our_service_usecases.dart';

part 'our_service_state.dart';

class OurServiceCubit extends Cubit<OurServiceState> {
  OurServiceCubit(this.ourService) : super(OurServiceInitial());

  final OurService ourService;

  void getGateType() async {
    emit(OurServiceInitial());
    final response = await ourService.getAllPost();
    response.fold(
      (l) => emit(OurServiceError()),
      (ourService) => emit(OurServiceSuccess(ourService)),
    );
  }
}
