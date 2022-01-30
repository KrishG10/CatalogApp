import 'package:first_app/models/cart.dart';
import 'package:first_app/models/catalog.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

class Mystore extends VxStore {
  late CartModel cart;
  late CartModel catalog;

  Mystore() {
    catalog = CatalogModel() as CartModel;
    cart = CartModel();
    cart.catalog = catalog as CatalogModel;
  }
}
