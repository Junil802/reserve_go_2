import 'package:dartz/dartz.dart';
import '../entities/order_entity.dart' as order_entity;
import '../failures/order_failure.dart';

abstract class OrderRepository {
  Future<Either<OrderFailure, order_entity.Order>> createOrder(order_entity.Order order);
  Future<Either<OrderFailure, order_entity.Order>> updateOrder(order_entity.Order order);
  Future<Either<OrderFailure, void>> deleteOrder(String id);
  Future<Either<OrderFailure, order_entity.Order>> getOrderById(String id);
  Future<Either<OrderFailure, List<order_entity.Order>>> getOrdersByCustomerId(String customerId);
  Future<Either<OrderFailure, List<order_entity.Order>>> getOrdersByRestaurantId(String restaurantId);
  Future<Either<OrderFailure, List<order_entity.Order>>> getOrdersByStatus(order_entity.OrderStatus status);
}