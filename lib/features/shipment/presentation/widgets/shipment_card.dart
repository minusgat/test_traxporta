import 'package:flutter/material.dart';
import 'package:test_traxporta/common/widgets/rounded_container.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/body_container.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/footer_container.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/header_container.dart';

class ShipmentCard extends StatelessWidget {
  const ShipmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedCardContainer(
      child: Column(children: const [
        HeaderContainer(),
        BodyContainer(),
        FooterContainer(),
      ]),
    );
  }
}
