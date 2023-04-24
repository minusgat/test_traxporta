import 'package:test_traxporta/features/shipment/domain/entities/delivery_address.dart';

class Shipment {
  final List<DeliveryAddress> addresses;
  final String status;
  final String description;
  final num amount;

  Shipment({
    required this.addresses,
    required this.status,
    required this.description,
    required this.amount,
  });
}
