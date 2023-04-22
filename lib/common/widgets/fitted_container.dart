import 'package:flutter/material.dart';

class FittedContainer extends StatelessWidget {
  final Widget? child;
  const FittedContainer({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: child,
      ),
    );
  }
}
