import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_traxporta/features/home/presentation/cubit/home_navigation_cubit.dart';
import 'package:test_traxporta/features/home/presentation/widgets/home_screen_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeNavigationCubit(),
      child: BlocBuilder<HomeNavigationCubit, int>(
        builder: (context, state) {
          final cubit = BlocProvider.of<HomeNavigationCubit>(context);
          return HomeScreenContent(
            homeNavigationCubit: cubit,
          );
        },
      ),
    );
  }
}
