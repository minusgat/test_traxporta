part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class ProfileChangedEvent extends ProfileEvent {
  const ProfileChangedEvent(this.bussinesName);
  final String bussinesName;

  @override
  List<Object> get props => [bussinesName];
}

class ProfileErrorEvent extends ProfileEvent {
  const ProfileErrorEvent(this.error);
  final String error;

  @override
  List<Object> get props => [error];
}
