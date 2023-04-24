import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_traxporta/common/util/theme/app_theme.dart';
import 'package:test_traxporta/features/home/presentation/pages/home_screen.dart';
import 'package:test_traxporta/features/messages/presentation/bloc/messages_bloc.dart';
import 'package:test_traxporta/features/profile/presentation/bloc/profile_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MessagesBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(
            BlocProvider.of<MessagesBloc>(context),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Test Traxporta',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: _homeScreen(),
      ),
    );
  }

  BlocListener<MessagesBloc, MessagesState> _homeScreen() {
    return BlocListener<MessagesBloc, MessagesState>(
      listener: (context, state) {
        if (state is MessagesChangedState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
            ),
          );
        }
      },
      child: const HomeScreen(),
    );
  }
}
