part of 'home_navigation_cubit.dart';

abstract class HomeNavigationState extends Equatable {
  const HomeNavigationState(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}

class HomeNavigationInitial extends HomeNavigationState {
  const HomeNavigationInitial() : super(0);
}

class HomeNavigationSelected extends HomeNavigationState {
  const HomeNavigationSelected(int index) : super(index);
}
