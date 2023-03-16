import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:megacom_second_stage/features/our_works/data/model/our_works_model.dart';
import 'package:megacom_second_stage/features/our_works/domain/usecases/our_work.dart';

part 'our_work_state.dart';

class OurWorkCubit extends Cubit<OurWorkState> {
  OurWorkCubit(this.ourWork) : super(OurWorkInitial());

  final OurWork ourWork;

  void getOurWork() async {
    emit(OurWorkLoading());

    final resultWork = await ourWork.getAllPost();
    resultWork.fold(
      (l) => emit(OurWorkError()),
      (r) => emit(OurWorkSuccess(r)),
    );
  }
}
