import 'package:dartz/dartz.dart';
import '../entities/order_entity.dart' as order_entity;
import '../failures/order_failure.dart';
import '../repositories/order_repository.dart';

class CreateOrder {
  final OrderRepository repository;

  CreateOrder(this.repository);

  Future<Either<OrderFailure, order_entity.Order>> call({
    required String customerId,
    required String restaurantId,
    required List<order_entity.OrderItem> items,
  }) async {
    if (items.isEmpty) {
      return Left(OrderFailure.invalidData());
    }
    final order = order_entity.Order(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      customerId: customerId,
      restaurantId: restaurantId,
      items: items,
      status: order_entity.OrderStatus.pending,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return repository.createOrder(order);
  }
}