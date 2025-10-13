import 'package:dartz/dartz.dart';
import '../entities/order_entity.dart' as order_entity;
import '../failures/order_failure.dart';
import '../repositories/order_repository.dart';

class GetOrdersByRestaurantId {
  final OrderRepository repository;

  GetOrdersByRestaurantId(this.repository);

  Future<Either<OrderFailure, List<order_entity.Order>>> call(String restaurantId) async {
    if (restaurantId.isEmpty) {
      return Left(OrderFailure.invalidData());
    }
    return repository.getOrdersByRestaurantId(restaurantId);
  }
}