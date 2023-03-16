part of 'send_application_cubit.dart';

abstract class SendApplicationState extends Equatable {
  @override
  List<Object> get props => [];
}

class SendApplicationInitial extends SendApplicationState {}
class SendApplicationError extends SendApplicationState {}
class SendApplicationLoading extends SendApplicationState {}
class SendApplicationSuccess extends SendApplicationState {}
