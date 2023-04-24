// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/extension/context_etension.dart';
import 'package:test_traxporta/features/home/presentation/cubit/home_navigation_cubit.dart';
import 'package:test_traxporta/features/home/presentation/util/menu_option.dart';
import 'package:test_traxporta/features/home/presentation/widgets/bottom_bar.dart';
import 'package:test_traxporta/features/home/presentation/widgets/nav_bar.dart';
import 'package:test_traxporta/features/profile/presentation/pages/profile.dart';
import 'package:test_traxporta/features/profile/presentation/pages/profile_form.dart';

class HomeScreenContent extends StatelessWidget {
  HomeScreenContent({super.key, required this.homeNavigationCubit});

  final HomeNavigationCubit homeNavigationCubit;

  final _screens = [
    ProfileForm(),
    const ProfileScreen(),
    //const ShipmentDetail()
  ];
  final _options = const [
    MenuOption(
      icon: Icons.abc,
      label: '1',
    ),
    MenuOption(
      icon: Icons.webhook,
      label: '2',
    ),
    // MenuOption(
    //   icon: Icons.satellite_alt_outlined,
    //   label: '3',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    void handleItemSelection(index) {
      homeNavigationCubit.selectItem(index);
    }

    return Scaffold(
      bottomNavigationBar: context.isSmallScreen
          ? BottomBar(
              onSelectionHandler: handleItemSelection,
              selectedIndex: homeNavigationCubit.state,
              options: _options,
            )
          : null,
      body: Row(
        children: [
          if (context.isLargeScreen)
            NavBar(
              onSelectionHandler: handleItemSelection,
              selectedIndex: homeNavigationCubit.state,
              options: _options,
            ),
          Expanded(
            child: Center(child: _screens[homeNavigationCubit.state]),
          ),
        ],
      ),
    );
  }
}
