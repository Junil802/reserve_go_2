import '../../../user/domain/failures/failure.dart';

class OrderFailure extends Failure {
  const OrderFailure([String? message]) : super(message);

  factory OrderFailure.notFound() {
    return const OrderFailure('Order not found');
  }

  factory OrderFailure.invalidData() {
    return const OrderFailure('Invalid order data');
  }

  factory OrderFailure.serverError() {
    return const OrderFailure('Server error occurred');
  }

  factory OrderFailure.statusNotAllowed() {
    return const OrderFailure('Order status change not allowed');
  }
}