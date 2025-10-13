import 'package:equatable/equatable.dart';

enum OrderStatus {
  pending,
  preparing,
  ready,
  completed,
  cancelled,
}

class Order extends Equatable {
  final String id;
  final String customerId;
  final String restaurantId;
  final List<OrderItem> items;
  final OrderStatus status;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Order({
    required this.id,
    required this.customerId,
    required this.restaurantId,
    required this.items,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  Order copyWith({
    String? id,
    String? customerId,
    String? restaurantId,
    List<OrderItem>? items,
    OrderStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Order(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      restaurantId: restaurantId ?? this.restaurantId,
      items: items ?? this.items,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        customerId,
        restaurantId,
        items,
        status,
        createdAt,
        updatedAt,
      ];
}

class OrderItem extends Equatable {
  final String menuItemId;
  final String name;
  final double price;
  final int quantity;

  const OrderItem({
    required this.menuItemId,
    required this.name,
    required this.price,
    required this.quantity,
  });

  @override
  List<Object?> get props => [menuItemId, name, price, quantity];
}