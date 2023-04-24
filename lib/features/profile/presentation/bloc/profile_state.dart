part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  final String bussinesName;
  final String abbreviatedBussinesName;
  const ProfileState(this.bussinesName, this.abbreviatedBussinesName);

  @override
  List<Object> get props => [];
}

class ProfileInitialState extends ProfileState {
  const ProfileInitialState() : super('Sin Nombre', 'X');
}

class ProfileChangedState extends ProfileState {
  const ProfileChangedState(String bussinesName, String abbreviatedBussinesName)
      : super(bussinesName, abbreviatedBussinesName);
}
