import 'package:dartz/dartz.dart';
import '../entities/menu_item_entity.dart';
import '../failures/menu_failure.dart';
import '../repositories/menu_repository.dart';

class CreateMenuItem {
  final MenuRepository repository;

  CreateMenuItem(this.repository);

  Future<Either<MenuFailure, MenuItem>> call({
    required String businessId,
    required String name,
    required String description,
    required double price,
    required MenuItemAvailability availability,
  }) async {
    if (name.isEmpty || price < 0) {
      return Left(MenuFailure.invalidData());
    }
    final menuItem = MenuItem(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      businessId: businessId,
      name: name,
      description: description,
      price: price,
      availability: availability,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    return repository.createMenuItem(menuItem);
  }
}