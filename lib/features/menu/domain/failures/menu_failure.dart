import '../../../user/domain/failures/failure.dart';

class MenuFailure extends Failure {
  const MenuFailure([String? message]) : super(message);

  factory MenuFailure.notFound() {
    return const MenuFailure('Menu item not found');
  }

  factory MenuFailure.invalidData() {
    return const MenuFailure('Invalid menu item data');
  }

  factory MenuFailure.serverError() {
    return const MenuFailure('Server error occurred');
  }

  factory MenuFailure.duplicateName() {
    return const MenuFailure('Menu item name already exists');
  }
}