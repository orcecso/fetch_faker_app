part of 'faker_list_bloc.dart';

abstract class FakerListEvent extends Equatable {
  @override
  List<Object?> get props => [];

  const FakerListEvent();
}

class LoadInitialPersonsListEvent extends FakerListEvent {
  @override
  List<Object?> get props => [];

  const LoadInitialPersonsListEvent();
}

class LoadNext20PersonsListEvent extends FakerListEvent {
  @override
  List<Object?> get props => [];

  const LoadNext20PersonsListEvent();
}
