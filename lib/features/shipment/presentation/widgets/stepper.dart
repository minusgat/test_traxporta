import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';
import 'package:test_traxporta/features/shipment/domain/entities/delivery_address.dart';
import 'package:test_traxporta/features/shipment/domain/entities/shipment.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/initial_step.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/intermediate_step.dart';
import 'package:test_traxporta/features/shipment/presentation/widgets/last_step.dart';

enum StepType { initial, last, intermediate }

class StepWidgetFactory {
  static Widget createStepWidget(StepType type) {
    Widget stepWidget;
    switch (type) {
      case StepType.initial:
        stepWidget = const InitialStep();
        break;
      case StepType.last:
        stepWidget = const LastStep();
        break;
      case StepType.intermediate:
        stepWidget = const IntermediateStep();
        break;
    }
    return stepWidget;
  }
}

class StteperWidget extends StatelessWidget {
  const StteperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var shipmentStopList = Shipment(
      addresses: [
        DeliveryAddress(
          direction: "Naucalpan, Estado de Mexico CP 09060",
          date: "25-06-23",
          time: "01:00  PM",
        ),
        DeliveryAddress(
          direction: "Cuautitlan, Estado de Mexico",
          date: "25-06-23",
          time: "03:00  PM",
        ),
        DeliveryAddress(
          direction: "Tultitlan, Estado de Mexico",
          date: "25-06-23",
          time: "18:30  PM",
        ),
        DeliveryAddress(
          direction: "Tepozotlan , Estado de Mexico",
          date: "26-02-22",
          time: "01:00  AM",
        ),
      ],
      status: "En proceso",
      description: "En proceso",
      amount: 0,
    );

    return ListView.builder(
      itemCount: shipmentStopList.addresses.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var shipmentStop = shipmentStopList.addresses[index];
        StepType step = stepType(index, shipmentStopList);
        return ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 80),
          child: Row(
            children: [
              StepWidgetFactory.createStepWidget(step),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: mediumPading),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: mediumPading,
                        ),
                        child: Text(
                          shipmentStop.direction,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      Row(
                        children: const [
                          Text(
                            "03-02-22",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: smallPading),
                            child: Text(
                              "/",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Text("01:00  PM"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  StepType stepType(int index, Shipment shipmentStopList) {
    var stepType = StepType.intermediate;
    if (index == 0) {
      stepType = StepType.initial;
    } else if (index == shipmentStopList.addresses.length - 1) {
      stepType = StepType.last;
    }
    return stepType;
  }
}
