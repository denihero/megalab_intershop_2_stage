import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:megacom_second_stage/features/home/domain/usecases/home_usecases.dart';

part 'send_application_state.dart';

class SendApplicationCubit extends Cubit<SendApplicationState> {
  SendApplicationCubit(this.home) : super(SendApplicationInitial());

  final HomeUseCases home;

  void sendApplication(String name, String phoneNumber, String message) async {
    emit(SendApplicationLoading());
    final response = await home.sendApplication(name, phoneNumber, message);
    response.fold(
      (l) => emit(SendApplicationError(l)),
      (r) => emit(SendApplicationSuccess(r)),
    );
  }
}
