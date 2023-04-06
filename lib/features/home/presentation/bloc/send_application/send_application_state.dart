part of 'send_application_cubit.dart';

abstract class SendApplicationState extends Equatable {
  @override
  List<Object> get props => [];
}

class SendApplicationInitial extends SendApplicationState {}

class SendApplicationError extends SendApplicationState {
  SendApplicationError(this.message);

  final String message;

  @override
  List<Object> get props => [message];
}

class SendApplicationLoading extends SendApplicationState {}

class SendApplicationSuccess extends SendApplicationState {
  SendApplicationSuccess(this.status);

  final bool status;

  @override
  List<Object> get props => [status];
}
