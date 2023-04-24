
import 'package:flutter/material.dart';
import 'package:test_traxporta/features/home/presentation/util/menu_option.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
    required List<MenuOption> options,
    this.onSelectionHandler,
    required this.selectedIndex,
  }) : _options = options;

  final int selectedIndex;
  final List<MenuOption> _options;
  final Function(int index)? onSelectionHandler;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onSelectionHandler,
      items: _options
          .map((option) => BottomNavigationBarItem(
                icon: Icon(option.icon),
                label: option.label,
              ))
          .toList(),
    );
  }
}
