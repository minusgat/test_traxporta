import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';
import 'package:test_traxporta/common/util/theme/colors.dart';

class RoundedCardContainer extends StatelessWidget {
  const RoundedCardContainer({
    super.key,
    this.child,
    this.backgroundColor,
    this.width,
  });

  final Widget? child;
  final Color? backgroundColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: extraLargePading,
        horizontal: MediaQuery.of(context).size.width * 0.1,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24.0),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(24.0),
            border: Border.all(
              color: AppColors.cardBackground,
              width: width ?? 0.0,
            ),
          ),
          child: child ?? const Text(''),
        ),
      ),
    );
  }
}
