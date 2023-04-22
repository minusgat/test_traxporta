import 'package:flutter/material.dart';

class RoundedCardContainer extends StatelessWidget {
  const RoundedCardContainer({
    super.key,
    this.child,
    this.backgroundColor,
  });

  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(24.0),
            // border: Border.all(
            //   color: const Color.fromARGB(255, 230, 230, 230),
            //   width: 1.0,
            // ),
          ),
          child: child ?? const Text(''),
        ),
      ),
    );
  }
}
