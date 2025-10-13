import 'package:dartz/dartz.dart';
import '../entities/order_entity.dart' as order_entity;
import '../failures/order_failure.dart';
import '../repositories/order_repository.dart';

class UpdateOrderStatus {
  final OrderRepository repository;

  UpdateOrderStatus(this.repository);

  Future<Either<OrderFailure, order_entity.Order>> call({
    required String orderId,
    required order_entity.OrderStatus newStatus,
  }) async {
    final orderResult = await repository.getOrderById(orderId);
    return orderResult.fold(
      (failure) => Left(failure),
      (order) {
        final updatedOrder = order.copyWith(
          status: newStatus,
          updatedAt: DateTime.now(),
        );
        return repository.updateOrder(updatedOrder);
      },
    );
  }
}