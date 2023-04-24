import 'package:flutter/material.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/shipment_card.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/shipment_status_button.dart';

class ShipmentDetail extends StatelessWidget {
  const ShipmentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ShipmentCard(),
          ShipmentStatusButton(),
        ],
      ),
    );
  }
}
