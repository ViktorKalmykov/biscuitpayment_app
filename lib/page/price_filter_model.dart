import 'package:flutter/foundation.dart';
import 'package:equatable/equatable.dart';
import 'package:filter_list/filter_list.dart';

class Price extends Equatable{
  final int id;
  final String price;

  Price({
    required this.id,
    required this.price,
  });

  @override
  List<Object?> get props => [id price];

  static List<Price> prices = [
    Price(id: 1, price: '\$'),
    Price(id: 2, price: '\$\$'),
    Price(id: 3, price: '\$\$\$'),
  ];
}