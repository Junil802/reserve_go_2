import 'package:equatable/equatable.dart';

enum MenuItemAvailability {
  available,
  unavailable,
}

class MenuItem extends Equatable {
  final String id;
  final String businessId;
  final String name;
  final String description;
  final double price;
  final MenuItemAvailability availability;
  final DateTime createdAt;
  final DateTime updatedAt;

  const MenuItem({
    required this.id,
    required this.businessId,
    required this.name,
    required this.description,
    required this.price,
    required this.availability,
    required this.createdAt,
    required this.updatedAt,
  });

  MenuItem copyWith({
    String? id,
    String? businessId,
    String? name,
    String? description,
    double? price,
    MenuItemAvailability? availability,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MenuItem(
      id: id ?? this.id,
      businessId: businessId ?? this.businessId,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      availability: availability ?? this.availability,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        businessId,
        name,
        description,
        price,
        availability,
        createdAt,
        updatedAt,
      ];
}