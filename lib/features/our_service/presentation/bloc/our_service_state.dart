part of 'our_service_cubit.dart';

abstract class OurServiceState extends Equatable {
  @override
  List<Object> get props => [];
}

class OurServiceInitial extends OurServiceState {}

class OurServiceError extends OurServiceState {}

class OurServiceLoading extends OurServiceState {}

class OurServiceSuccess extends OurServiceState {
  OurServiceSuccess(this.ourService);

  final List<OurServiceModel> ourService;
  @override
  List<Object> get props => [ourService];
}
