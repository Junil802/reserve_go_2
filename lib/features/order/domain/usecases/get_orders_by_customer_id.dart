import 'package:dartz/dartz.dart';
import '../entities/order_entity.dart' as order_entity;
import '../failures/order_failure.dart';
import '../repositories/order_repository.dart';

class GetOrdersByCustomerId {
  final OrderRepository repository;

  GetOrdersByCustomerId(this.repository);

  Future<Either<OrderFailure, List<order_entity.Order>>> call(String customerId) async {
    if (customerId.isEmpty) {
      return Left(OrderFailure.invalidData());
    }
    return repository.getOrdersByCustomerId(customerId);
  }
}