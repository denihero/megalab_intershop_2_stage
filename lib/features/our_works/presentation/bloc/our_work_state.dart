part of 'our_work_cubit.dart';

abstract class OurWorkState extends Equatable {
  @override
  List<Object> get props => [];
}

class OurWorkInitial extends OurWorkState {}

class OurWorkLoading extends OurWorkState {}

class OurWorkSuccess extends OurWorkState {
  OurWorkSuccess(this.ourWorksModel);

  final OurWorksModel ourWorksModel;

  @override
  List<Object> get props => [ourWorksModel];
}

class OurWorkError extends OurWorkState {}
