import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';

class FittedContainer extends StatelessWidget {
  final Widget? child;
  const FittedContainer({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(largePading),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: child,
      ),
    );
  }
}
