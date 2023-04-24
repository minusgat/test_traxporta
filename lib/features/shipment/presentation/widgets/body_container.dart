import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/theme/colors.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/stepper.dart';

class BodyContainer extends StatelessWidget {
  const BodyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: AppColors.border,
            width: 1.0,
          ),
          bottom: BorderSide(
            color: AppColors.border,
            width: 1.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Publicado hace  1 dia"),
            StteperWidget(),
          ],
        ),
      ),
    );
  }
}
