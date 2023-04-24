import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';
import 'package:test_traxporta/common/widgets/rounded_container.dart';
import 'package:test_traxporta/features/shipment/domain/entities/shipment_status_detail.dart';

class ShipmentStatusButton extends StatelessWidget {
  ShipmentStatusButton({super.key});

  final shipmentStatusDetail =
      ShipmentStatusDetail("Naucaloan de Juarez- Puebla", "En camino", "98765");

  @override
  Widget build(BuildContext context) {
    return RoundedCardContainer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(mediumPading),
        child: Column(
          children: [
            const _HeaderContainer(),
            _BodyContainer(
              shipmentStatusDetail: shipmentStatusDetail,
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderContainer extends StatelessWidget {
  const _HeaderContainer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(largePading),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_pin,
            size: 24,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: mediumPading),
            child: Text(
              "Cargas en curso",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class _BodyContainer extends StatelessWidget {
  const _BodyContainer({
    required this.shipmentStatusDetail,
  });

  final ShipmentStatusDetail shipmentStatusDetail;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 1,
            child: Text(shipmentStatusDetail.adress),
          ),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  shipmentStatusDetail.status.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.yellow),
                ),
              )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: Text(shipmentStatusDetail.id),
            ),
          ),
          const Icon(
            Icons.chevron_right_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
