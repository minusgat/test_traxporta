
import 'package:flutter/material.dart';
import 'package:test_traxporta/features/home/presentation/util/menu_option.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required List<MenuOption> options,
    required this.onSelectionHandler,
    required this.selectedIndex,
  }) : _options = options;

  final List<MenuOption> _options;
  final Function(int index) onSelectionHandler;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelectionHandler,
      labelType: NavigationRailLabelType.all,
      destinations: _options
          .map((option) => NavigationRailDestination(
                icon: Icon(option.icon),
                label: Text(option.label ?? ''),
              ))
          .toList(),
    );
  }
}
