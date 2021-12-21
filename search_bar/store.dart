import 'package:velocity_x/velocity_x.dart';

import 'cart.dart';
import 'catalog.dart';


class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;
  VxNavigator navigator;
  List<Item> items;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}