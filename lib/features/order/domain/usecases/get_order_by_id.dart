import 'package:dartz/dartz.dart';
import '../entities/order_entity.dart' as order_entity;
import '../failures/order_failure.dart';
import '../repositories/order_repository.dart';

class GetOrderById {
  final OrderRepository repository;

  GetOrderById(this.repository);

  Future<Either<OrderFailure, order_entity.Order>> call(String id) async {
    if (id.isEmpty) {
      return Left(OrderFailure.invalidData());
    }
    return repository.getOrderById(id);
  }
}